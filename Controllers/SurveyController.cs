using Microsoft.AspNetCore.Mvc;
using SurveyWebApp.BusinessLogicLayer;
using SurveyWebApp.Domain.Survey;

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
        public IActionResult StartSurvey()
        {
            return View();
        }
        public IActionResult CustomerInfo()
        {
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
