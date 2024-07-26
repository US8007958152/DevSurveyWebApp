namespace SurveyWebApp.Domain.Survey
{
    public class OptionDetails
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int QuestionId { get; set; }
        public string OptionalText { get; set; }
    }
}
