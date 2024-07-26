namespace SurveyWebApp.Domain.Survey
{
    public class SurveyDetails
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public int CategoryId { get; set; }
        public string Description { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public List<QuestionDetails> Questions { get; set; }
    }
}
