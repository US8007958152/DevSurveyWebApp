using SurveyWebApp.Domain.Survey;

namespace SurveyWebApp.BusinessLogicLayer
{
    public interface ISurvey
    {
         SurveyDetails GetSurveyDetails(int surveyId);
         IEnumerable<SurveyViewModel> GetSurveys();
    }
}
