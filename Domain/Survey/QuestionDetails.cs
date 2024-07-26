namespace SurveyWebApp.Domain.Survey
{
    public class QuestionDetails
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int QuestionTypeId { get; set; }
        public int QuestionType { get; set; }
        public int MasterId { get; set; }
        public string GuideLineText { get; set; }
        public bool IsMandatory { get; set; }
        public List<OptionDetails> Options { get; set; } 
    }
}
