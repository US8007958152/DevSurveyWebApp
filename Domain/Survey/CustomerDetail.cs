namespace SurveyWebApp.Domain.Survey
{
    public class CustomerDetail
    {       

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
        public string MobileNumber { get; set; }
        public long AadharNumber { get; set; }
        public string VoterId { get; set; }
        public string Age { get; set; }
        public byte Gender { get; set; }
        public DateTime DOB { get; set; }
        public byte AgeGroupId { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string LocationId { get; set; }
    }
}
