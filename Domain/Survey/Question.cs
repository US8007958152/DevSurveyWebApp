using Microsoft.AspNetCore.Http.HttpResults;

namespace SurveyWebApp.Domain.Survey
{
    public class Question
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int QuestionTypeId { get; set; }
        public int MasterId { get; set; }
        public string GuideLineText { get; set; }
        public bool IsActive { get; set; }
        public bool IsMandatory { get; set; }
        public DateTime CreatedDate { get; set; }
        public string CreatedBY { get; set; }
        public DateTime UpdateDate { get; set; }
        public string UpdatedBy { get; set; }
    }
}
