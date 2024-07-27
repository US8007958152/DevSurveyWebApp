using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using SurveyWebApp.BusinessLogicLayer;
using SurveyWebApp.Domain.Survey;
using System.Data;

namespace SurveyWebApp.DataAccessLayer
{
    public class SurveyDAL : ISurvey
    {
        private readonly IConfiguration _configuration;
        private readonly string _connString=string.Empty;
        public SurveyDAL(IConfiguration configuration)
        {
            _configuration = configuration;
            _connString = configuration.GetConnectionString("SurveyDB");
        }
        public SurveyDetails GetSurveyDetails(int surveyId)
        {
            string sqlQuery = "SELECT SM.Id,SM.Title,SM.[Description],SM.CategoryId,SC.Title AS Category,SM.StartDate,SM.EndDate,SM.IsActive FROM  [sSurvey].[tMaster] SM INNER JOIN [sSurvey].[tCategory] SC  ON SC.Id = SM.CategoryId ";
            using (IDbConnection con=new SqlConnection(_connString))
            {
                SurveyDetails surveyDetails = con.Query<SurveyDetails>(sqlQuery).FirstOrDefault();
                return surveyDetails;
            }
        }
        public IEnumerable<SurveyViewModel> GetSurveys()
        {
            string sqlQuery = "SELECT SM.Id,SM.Title,SM.[Description],SM.CategoryId,SC.Title AS Category,SM.StartDate,SM.EndDate,SM.IsActive FROM  [sSurvey].[tMaster] SM INNER JOIN [sSurvey].[tCategory] SC  ON SC.Id = SM.CategoryId ";
            using (IDbConnection con = new SqlConnection(_connString))
            {
                IEnumerable<SurveyViewModel> surveys = con.Query<SurveyViewModel>(sqlQuery);
                return surveys;
            }
        }

        public int SaveCustomerDetail(CustomerDetail customerDetail)
        {
            string procedureName = "[sSurvey].[spSaveCustomerDetail]";
            using (IDbConnection con = new SqlConnection(_connString))
            {
                DateTime? dateOfBirth = (DateTime.MinValue == customerDetail.DOB ? null : customerDetail.DOB);
                //Set up DynamicParameters object to pass parameters  
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@FirstName", customerDetail.FirstName);
                parameters.Add("@LastName", customerDetail.LastName);
                parameters.Add("@EmailId", customerDetail.EmailId);
                parameters.Add("@MobileNumber", customerDetail.MobileNumber);
                parameters.Add("@AadharNumber", customerDetail.AadharNumber);
                parameters.Add("@VoterId", customerDetail.VoterId);
                parameters.Add("@Gender", customerDetail.Gender);
                parameters.Add("@DOB", dateOfBirth);
                parameters.Add("@AgeGroupId", customerDetail.AgeGroupId);
                parameters.Add("@Address", customerDetail.Address);
                parameters.Add("@City", customerDetail.City);
                parameters.Add("@State", customerDetail.State);
                parameters.Add("@LocationId", customerDetail.LocationId);
                int surverId = con.Query<int>(procedureName, parameters,commandType: CommandType.StoredProcedure).First();
                return surverId;
            }
        }
    }
}
