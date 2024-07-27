using Microsoft.AspNetCore.Mvc;
using SurveyWebApp.BusinessLogicLayer;
using SurveyWebApp.Domain.Survey;
using SurveyWebApp.Models;

namespace SurveyWebApp.Controllers
{
    public class SurveyController : Controller
    {
        private readonly ISurvey _survey;

        public SurveyController(ISurvey survey)
        {
            _survey= survey;
        }
        public IActionResult GetSurvey()
        {
            return View();
        }
        [HttpPost]
        public IActionResult StartSurvey(CustomerDetailViewModel customerDetail)
        {
            try
            {
                if (customerDetail == null)
                {
                    return BadRequest("Invalid request payload");
                }
                CustomerDetail customer = new CustomerDetail
                {
                    FirstName = customerDetail.FirstName,
                    LastName = customerDetail.LastName,
                    EmailId = customerDetail.EmailId,
                    Age = customerDetail.Age,
                    Gender = customerDetail.Gender,
                    MobileNumber = customerDetail.MobileNumber
                };
                int customerId = _survey.SaveCustomerDetail(customer);
                return Ok(new { status = true, customerId = customerId });
            }
            catch (Exception ex)
            {
                return BadRequest($"Failed to start {ex.Message}");
            }           
        }
        public IActionResult CustomerInfo(int surveyId)
        {
            ViewBag.SurveyId = surveyId;   
          
            //HttpContext.Session.SetInt32("SurveyId", surveyId);
            return View();
        }
        [HttpGet]
        public IActionResult GetSurveys()
        {
            try
            {
                IEnumerable<SurveyViewModel> surveys = _survey.GetSurveys();
                return Ok(surveys);
            }
            catch (Exception ex) 
            { 
                return BadRequest(ex.Message);
            }          
        }
    }
}
