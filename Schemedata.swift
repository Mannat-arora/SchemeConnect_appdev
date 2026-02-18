import Foundation

struct Scheme: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let benefit: String
    let description: String
    let eligibility: String
    let applyLink: String
}



let schemesdata: [Scheme] = [

    // MARK: STUDENT SCHEMES (25)

    Scheme(name: "National Means Cum Merit Scholarship", category: "Student", benefit: "₹12,000/year", description: "Financial support to meritorious students.", eligibility: "Class 9 students, low income", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Central Sector Scholarship", category: "Student", benefit: "₹10,000–₹20,000/year", description: "Supports college students.", eligibility: "80% in Class 12" , applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "INSPIRE Scholarship", category: "Student", benefit: "₹80,000/year", description: "Supports science students.", eligibility: "Science stream toppers", applyLink: "https://online-inspire.gov.in/"),

    Scheme(name: "AICTE Pragati Scholarship", category: "Student", benefit: "₹50,000/year", description: "Supports girl students.", eligibility: "Girls in technical education", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "AICTE Saksham Scholarship", category: "Student", benefit: "₹50,000/year", description: "Supports disabled students.", eligibility: "Students with disability", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Post Matric Scholarship SC", category: "Student", benefit: "Full tuition support", description: "Supports SC students.", eligibility: "SC students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Post Matric Scholarship ST", category: "Student", benefit: "Full tuition support", description: "Supports ST students.", eligibility: "ST students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Merit Cum Means Scholarship", category: "Student", benefit: "₹20,000/year", description: "Supports minority students.", eligibility: "Minority students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "PM Yasasvi Scheme", category: "Student", benefit: "₹1,25,000/year", description: "Supports OBC students.", eligibility: "OBC category", applyLink: "https://yet.nta.ac.in/"),

    Scheme(name: "ISHAN UDAY Scholarship", category: "Student", benefit: "₹7,800/month", description: "Supports NE students.", eligibility: "North East students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "UGC NET Fellowship", category: "Student", benefit: "Monthly fellowship", description: "Supports research.", eligibility: "NET qualified", applyLink: "https://ugcnet.nta.nic.in/"),

    Scheme(name: "PM Research Fellowship", category: "Student", benefit: "₹80,000/month", description: "Supports PhD students.", eligibility: "IIT/IISc students",applyLink: "https://www.pmrf.in/"),

    Scheme(name: "National Overseas Scholarship", category: "Student", benefit: "Full tuition abroad", description: "Supports overseas education.", eligibility: "SC/ST students", applyLink: "https://nosmsje.gov.in/"),

    Scheme(name: "Digital India Internship", category: "Student", benefit: "₹10,000 stipend", description: "Internship support.", eligibility: "Graduate students", applyLink: "https://www.digitalindia.gov.in/"),

    Scheme(name: "Top Class Education Scheme", category: "Student", benefit: "Full tuition", description: "Supports SC students.", eligibility: "SC students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "AICTE PG Scholarship", category: "Student", benefit: "₹12,400/month", description: "Supports PG students.", eligibility: "AICTE PG students", applyLink: "https://pgscholarship.aicte.gov.in/"),

    Scheme(name: "Begum Hazrat Mahal Scholarship", category: "Student", benefit: "Financial aid", description: "Supports minority girls.", eligibility: "Minority girls", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "National Fellowship ST", category: "Student", benefit: "Monthly fellowship", description: "Supports ST students.", eligibility: "ST students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "National Fellowship SC", category: "Student", benefit: "Monthly fellowship", description: "Supports SC students.", eligibility: "SC students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "PG Scholarship Single Girl Child", category: "Student", benefit: "₹36,200/year", description: "Supports girl child.", eligibility: "Single girl child", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Pre Matric Scholarship Minority", category: "Student", benefit: "₹10,000/year", description: "Supports minority students.", eligibility: "Minority students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "Post Matric Scholarship Minority", category: "Student", benefit: "Tuition support", description: "Supports minority students.", eligibility: "Minority students", applyLink: "https://scholarships.gov.in/"),

    Scheme(name: "National Talent Search", category: "Student", benefit: "Monthly scholarship", description: "Supports talented students.", eligibility: "Class 10 students", applyLink: "https://ncert.nic.in/"),

    Scheme(name: "KVPY Fellowship", category: "Student", benefit: "Monthly fellowship", description: "Supports science students.", eligibility: "Science students", applyLink: "https://www.iisc.ac.in/"),

    Scheme(name: "AICTE Doctoral Fellowship", category: "Student", benefit: "Monthly fellowship", description: "Supports PhD students.", eligibility: "PhD students", applyLink: "https://fellowship.aicte.gov.in/"),



    // MARK: FARMER SCHEMES (25)

    Scheme(name: "PM Kisan Samman Nidhi", category: "Farmer", benefit: "₹6,000/year", description: "Income support.", eligibility: "Small farmers", applyLink: "https://pmkisan.gov.in/"),

    Scheme(name: "PM Fasal Bima Yojana", category: "Farmer", benefit: "Crop insurance", description: "Crop protection.", eligibility: "All farmers", applyLink: "https://pmfby.gov.in/"),

    Scheme(name: "Soil Health Card Scheme", category: "Farmer", benefit: "Soil testing", description: "Improves soil health.", eligibility: "Farmers", applyLink: "https://soilhealth.dac.gov.in/"),

    Scheme(name: "Kisan Credit Card", category: "Farmer", benefit: "Easy loans", description: "Credit support.", eligibility: "Farmers", applyLink: "https://www.myscheme.gov.in/"),

    Scheme(name: "PM Krishi Sinchai Yojana", category: "Farmer", benefit: "Irrigation support", description: "Improves irrigation.", eligibility: "Farmers", applyLink: "https://pmksy.gov.in/"),

    Scheme(name: "PM Kusum Scheme", category: "Farmer", benefit: "Solar pumps", description: "Solar energy support.", eligibility: "Farmers", applyLink: "https://pmkusum.mnre.gov.in/"),

    Scheme(name: "National Agriculture Market", category: "Farmer", benefit: "Market access", description: "Online selling.", eligibility: "Farmers", applyLink: "https://www.enam.gov.in/"),

    Scheme(name: "Dairy Entrepreneurship Scheme", category: "Farmer", benefit: "Dairy support", description: "Dairy farming.", eligibility: "Farmers", applyLink: "https://nabard.org/"),

    Scheme(name: "Livestock Insurance", category: "Farmer", benefit: "Insurance", description: "Animal insurance.", eligibility: "Farmers", applyLink: "https://www.india.gov.in/"),

    Scheme(name: "National Food Security Mission", category: "Farmer", benefit: "Crop support", description: "Increase production.", eligibility: "Farmers", applyLink: "https://nfsm.gov.in/"),

    Scheme(name: "PM Kisan Maandhan", category: "Farmer", benefit: "₹3,000/month pension", description: "Pension support.", eligibility: "Small farmers", applyLink: "https://maandhan.in/"),

    Scheme(name: "Agriculture Infrastructure Fund", category: "Farmer", benefit: "Infrastructure loans", description: "Infrastructure support.", eligibility: "Farmers", applyLink: "https://agriinfra.dac.gov.in/"),

    Scheme(name: "Seed Village Scheme", category: "Farmer", benefit: "Seed support", description: "Seed distribution.", eligibility: "Farmers", applyLink: "https://seednet.gov.in/"),

    Scheme(name: "Organic Farming Scheme", category: "Farmer", benefit: "Organic support", description: "Promotes organic farming.", eligibility: "Farmers" , applyLink: "https://pgsindia-ncof.gov.in/"),

    Scheme(name: "Horticulture Mission", category: "Farmer", benefit: "Horticulture support", description: "Fruit farming.", eligibility: "Farmers", applyLink: "https://nhb.gov.in/"),

    Scheme(name: "Blue Revolution", category: "Farmer", benefit: "Fisheries support", description: "Fish farming.", eligibility: "Farmers", applyLink: "https://nfdb.gov.in/"),

    Scheme(name: "National Beekeeping Mission", category: "Farmer", benefit: "Beekeeping support", description: "Honey production.", eligibility: "Farmers", applyLink: "https://nbb.gov.in/"),

    Scheme(name: "Farm Mechanization Scheme", category: "Farmer", benefit: "Equipment subsidy", description: "Machinery support.", eligibility: "Farmers", applyLink: "https://agrimachinery.nic.in/"),

    Scheme(name: "Crop Diversification Scheme", category: "Farmer", benefit: "Crop support", description: "Crop diversification.", eligibility: "Farmers", applyLink: "https://agricoop.nic.in/"),

    Scheme(name: "Paramparagat Krishi Vikas Yojana", category: "Farmer", benefit: "Organic farming support", description: "Organic farming.", eligibility: "Farmers", applyLink: "https://pgsindia-ncof.gov.in/"),

    Scheme(name: "National Bamboo Mission", category: "Farmer", benefit: "Bamboo farming", description: "Bamboo support.", eligibility: "Farmers", applyLink: "https://nbm.nic.in/"),

    Scheme(name: "Integrated Farming Scheme", category: "Farmer", benefit: "Farm support", description: "Integrated farming.", eligibility: "Farmers", applyLink: "https://agricoop.nic.in/"),

    Scheme(name: "Agri Export Policy", category: "Farmer", benefit: "Export support", description: "Export assistance.", eligibility: "Farmers", applyLink: "https://agriexportpolicy.in/"),

    Scheme(name: "Micro Irrigation Scheme", category: "Farmer", benefit: "Water saving", description: "Water support.", eligibility: "Farmers", applyLink: "https://pmksy.gov.in/"),

    Scheme(name: "National Livestock Mission", category: "Farmer", benefit: "Livestock support", description: "Animal farming.", eligibility: "Farmers", applyLink: "https://nlm.udyamimitra.in/"),



    // MARK: ELDERLY SCHEMES (25)


    Scheme(name: "National Pension Scheme", category: "Elderly", benefit: "Monthly pension", description: "Retirement pension.", eligibility: "Senior citizens", applyLink: "https://enps.nsdl.com/"),

    Scheme(name: "Indira Gandhi Pension Scheme", category: "Elderly", benefit: "₹500–₹1,000/month", description: "Old age pension.", eligibility: "BPL elderly", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Senior Citizen Savings Scheme", category: "Elderly", benefit: "High interest savings", description: "Savings scheme.", eligibility: "60+ age", applyLink: "https://www.indiapost.gov.in/"),

    Scheme(name: "PM Vaya Vandana Yojana", category: "Elderly", benefit: "Pension support", description: "Monthly pension.", eligibility: "Senior citizens", applyLink: "https://licindia.in/"),

    Scheme(name: "Atal Pension Yojana", category: "Elderly", benefit: "₹1,000–₹5,000/month", description: "Pension scheme.", eligibility: "Workers", applyLink: "https://enps.nsdl.com/"),

    Scheme(name: "Ayushman Bharat", category: "Elderly", benefit: "₹5 lakh insurance", description: "Health insurance.", eligibility: "Eligible families" ,applyLink: "https://pmjay.gov.in/"),

    Scheme(name: "Varishtha Pension Scheme", category: "Elderly", benefit: "Pension support", description: "Senior citizen pension.", eligibility: "60+", applyLink: "https://licindia.in/"),

    Scheme(name: "Annapurna Scheme", category: "Elderly", benefit: "Free food grains", description: "Food support.", eligibility: "BPL elderly", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Senior Citizen Health Insurance", category: "Elderly", benefit: "Health cover", description: "Medical support.", eligibility: "Senior citizens", applyLink: "https://www.india.gov.in/"),

    Scheme(name: "Reverse Mortgage Scheme", category: "Elderly", benefit: "Monthly income", description: "Income support.", eligibility: "Homeowners", applyLink: "https://nhb.org.in/"),

    Scheme(name: "Widow Pension Scheme", category: "Elderly", benefit: "Monthly pension", description: "Widow support.", eligibility: "Widows", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Disability Pension Scheme", category: "Elderly", benefit: "Monthly pension", description: "Disability support.", eligibility: "Disabled elderly", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Senior Citizen Travel Concession", category: "Elderly", benefit: "Travel discount", description: "Travel support.", eligibility: "Senior citizens", applyLink: "https://www.irctc.co.in/"),

    Scheme(name: "Old Age Homes Scheme", category: "Elderly", benefit: "Housing support", description: "Shelter support.", eligibility: "Elderly", applyLink: "https://socialjustice.gov.in//"),

    Scheme(name: "National Social Assistance Programme", category: "Elderly", benefit: "Financial support", description: "Social support.", eligibility: "Poor elderly", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Senior Citizen Helpline", category: "Elderly", benefit: "Emergency support", description: "Helpline support.", eligibility: "Senior citizens", applyLink: "https://elderline.gov.in/"),

    Scheme(name: "Health Checkup Scheme", category: "Elderly", benefit: "Free checkups", description: "Health support.", eligibility: "Senior citizens", applyLink: "https://pmjay.gov.in/"),

    Scheme(name: "Legal Aid Scheme", category: "Elderly", benefit: "Legal support", description: "Legal help.", eligibility: "Senior citizens", applyLink: "https://nalsa.gov.in/"),

    Scheme(name: "Food Security Scheme", category: "Elderly", benefit: "Food support", description: "Food assistance.", eligibility: "Senior citizens", applyLink: "https://nfsa.gov.in/"),

    Scheme(name: "Housing Scheme Elderly", category: "Elderly", benefit: "Housing support", description: "Housing assistance.", eligibility: "Senior citizens", applyLink: "https://pmaymis.gov.in/"),

    Scheme(name: "Medical Support Scheme", category: "Elderly", benefit: "Medical support", description: "Healthcare assistance.", eligibility: "Senior citizens", applyLink: "https://pmjay.gov.in/"),

    Scheme(name: "Digital Literacy Scheme", category: "Elderly", benefit: "Digital training", description: "Tech education.", eligibility: "Senior citizens", applyLink: "https://pmgdisha.in/"),

    Scheme(name: "Community Support Scheme", category: "Elderly", benefit: "Community support", description: "Community assistance.", eligibility: "Senior citizens", applyLink: "https://socialjustice.gov.in/"),

    Scheme(name: "Financial Security Scheme", category: "Elderly", benefit: "Financial aid", description: "Financial support.", eligibility: "Senior citizens", applyLink: "https://nsap.nic.in/"),

    Scheme(name: "Senior Employment Scheme", category: "Elderly", benefit: "Employment support", description: "Job assistance.", eligibility: "Senior citizens", applyLink: "https://www.ncs.gov.in/"),



    // MARK: JOB SEEKER SCHEMES (25)
                                                                                    

    Scheme(name: "PM Skill Development Scheme", category: "Job Seeker", benefit: "Free skill training", description: "Skill training support.", eligibility: "Youth", applyLink: "https://www.pmkvyofficial.org/"),

    Scheme(name: "Skill India Mission", category: "Job Seeker", benefit: "Skill certification", description: "Skill development.", eligibility: "Youth", applyLink: "https://www.skillindia.gov.in/"),

    Scheme(name: "Startup India Scheme", category: "Job Seeker", benefit: "Startup support", description: "Startup funding.", eligibility: "Entrepreneurs", applyLink: "https://www.startupindia.gov.in/"),

    Scheme(name: "Stand Up India Scheme", category: "Job Seeker", benefit: "Loan support", description: "Business loan.", eligibility: "Entrepreneurs", applyLink: "https://www.standupmitra.in/"),

    Scheme(name: "National Career Service", category: "Job Seeker", benefit: "Job matching", description: "Employment portal.", eligibility: "Job seekers", applyLink: "https://www.ncs.gov.in/"),

    Scheme(name: "MGNREGA Scheme", category: "Job Seeker", benefit: "100 days employment", description: "Rural jobs.", eligibility: "Rural citizens", applyLink: "https://nrega.nic.in/"),

    Scheme(name: "Deen Dayal Upadhyaya Scheme", category: "Job Seeker", benefit: "Skill training", description: "Employment training.", eligibility: "Youth", applyLink: "https://ddugky.gov.in/"),

    Scheme(name: "PM Employment Generation Programme", category: "Job Seeker", benefit: "Business funding", description: "Self employment.", eligibility: "Entrepreneurs", applyLink: "https://www.kviconline.gov.in/"),

    Scheme(name: "Apprenticeship Scheme", category: "Job Seeker", benefit: "Training stipend", description: "Apprenticeship support.", eligibility: "Youth", applyLink: "https://www.apprenticeshipindia.gov.in/"),

    Scheme(name: "Digital India Scheme", category: "Job Seeker", benefit: "Digital jobs", description: "Digital employment.", eligibility: "Youth", applyLink: "https://www.digitalindia.gov.in/"),

    Scheme(name: "Women Employment Scheme", category: "Job Seeker", benefit: "Employment support", description: "Women empowerment.", eligibility: "Women", applyLink: "https://wcd.gov.in/"),

    Scheme(name: "MSME Support Scheme", category: "Job Seeker", benefit: "Business support", description: "MSME funding.", eligibility: "Entrepreneurs", applyLink: "https://msme.gov.in/"),

    Scheme(name: "Self Employment Scheme", category: "Job Seeker", benefit: "Self employment support", description: "Entrepreneur support.", eligibility: "Youth", applyLink: "https://www.kviconline.gov.in/"),

    Scheme(name: "Skill Upgrade Scheme", category: "Job Seeker", benefit: "Skill training", description: "Skill improvement.", eligibility: "Workers", applyLink: "https://www.skillindia.gov.in/"),

    Scheme(name: "Career Counseling Scheme", category: "Job Seeker", benefit: "Career guidance", description: "Career support.", eligibility: "Students", applyLink: "https://www.ncs.gov.in/"),

    Scheme(name: "Job Placement Scheme", category: "Job Seeker", benefit: "Placement support", description: "Job support.", eligibility: "Youth", applyLink: "https://www.ncs.gov.in/"),

    Scheme(name: "Digital Skill Scheme", category: "Job Seeker", benefit: "IT training", description: "Digital skills.", eligibility: "Youth", applyLink: "https://www.skillindia.gov.in/"),

    Scheme(name: "Entrepreneurship Scheme", category: "Job Seeker", benefit: "Business training", description: "Entrepreneur support.", eligibility: "Entrepreneurs", applyLink: "https://www.startupindia.gov.in/"),

    Scheme(name: "Youth Employment Scheme", category: "Job Seeker", benefit: "Job support", description: "Employment support.", eligibility: "Youth", applyLink: "https://www.ncs.gov.in/"),

    Scheme(name: "Internship Scheme", category: "Job Seeker", benefit: "Internship support", description: "Internship programs.", eligibility: "Students", applyLink: "https://internship.aicte-india.org/"),

    Scheme(name: "Vocational Training Scheme", category: "Job Seeker", benefit: "Skill training", description: "Vocational training.", eligibility: "Youth", applyLink: "https://www.skillindia.gov.in/"),

    Scheme(name: "Urban Employment Scheme", category: "Job Seeker", benefit: "Urban jobs", description: "Urban employment.", eligibility: "Urban youth", applyLink: "https://pmaymis.gov.in/"),

    Scheme(name: "Rural Employment Scheme", category: "Job Seeker", benefit: "Rural jobs", description: "Rural employment.", eligibility: "Rural youth", applyLink: "https://nrega.nic.in/"),

    Scheme(name: "Skill Certification Scheme", category: "Job Seeker", benefit: "Certification", description: "Skill certification.", eligibility: "Youth", applyLink: "https://www.skillindia.gov.in/"),

    Scheme(name: "Employment Assistance Scheme", category: "Job Seeker", benefit: "Job assistance", description: "Job support.", eligibility: "Job seekers", applyLink: "https://www.ncs.gov.in/")

]
