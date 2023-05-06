String au_leading1 = "Who are we?";
String au_leading2 = "We're at your beck and call";
String au_leading3 = "Choose quality";
String au_leading4 = "Trusted partner";

String au_exp_1 =
    "We’re a painting company, based in Amsterdam. Possibly a little strange – Because even though the beautiful outer appearance of a building is the reason we exist, we greatly value the inside too. As far as we are concerned, a beautiful appearance is a result of a great deal of attention to, and knowledge of, what it encapsulates. In other words, the inside. Only by immersing ourselves in our clients and our profession down to the very last detail can we succeed in delivering the quality that our clients naturally expect – and that is the very best quality.";
String au_exp_2 =
    "Filled with passion – and a healthy dose of fanaticism – we embellish and maintain special and old houses, offices and buildings in Amsterdam. But, our expertise is far more reaching than just painting. From wood rot restoration to facade cleaning, and from carpentry to plumbing, our speciality is total maintenance – and it has been for years. Thanks to a sophisticated process and the newest tools we work on the future-proofing of buildings, all the while honouring the past.";
String au_exp_3 =
    "We choose quality. On the one hand by working with professionals who honour their craft, and on the other hand through a careful selection of the right materials. Of course, all painting companies claim this, but we put our money where our mouth is. We carry certificates from Sikkens Quality painter and de Betere Schilder. This means that we exclusively work with the most modern paint products and the we except nothing less but the very best quality. Besides, we offer a 5-year warranty on all carried out services and used products. Perfect craftsmanship guaranteed.";
String au_exp_4 =
    "In addition to providing the very best paintwork, we place great value on honest and crystal-clear communication. Before, during and after the job, we are ready to answer all your questions. Personal attention makes our work enjoyable. Reliability is very important to us, this is reflected in our transparent maintenance plans, clear quotations (which you can request without any obligation) and public reviews. more often than not these are good,  and sometimes less good, reviews. But we are transparent about our work, either way. Feel free to take a look at our customer reviews.";

List<CustomerExperience> CustomerExperienceList = [
  CustomerExperience("9.6", "Bozzie\nfrom Amsterdam",
      "Everything went perfectly, and the work was done quickly and professionally. All staff was nice and friendly. The result looks great. I would certainly hire them again."),
  CustomerExperience("9.2", "Ewoud\nfrom Amsterdam",
      "I enjoyed working with them. There was always time for deliberation and the team that was on sight were always very polite and tidy. Good quality work and very good communication with the owners."),
  CustomerExperience("9.5", "Suzanne\nfrom Amsterdam",
      "They delivered great work. They worked nicely, for any extra repairs and work they checked in to see if it was okay with me first, I thought this was very nice. They worked very tidily, cleaned everything up and didn't leave any trash behind. Very nice painters!"),
];

class CustomerExperience {
  CustomerExperience(this.score, this.header, this.comment);

  String score;
  String header;
  String comment;
}

List<String> WorkOrderList = [
  "Request a quote",
  "The meeting / inspection on-site",
  "Elaborate and send the offer",
  "Approval and working out the details",
  "Planning and organising the job",
  "The work is done",
  "Completion and aftercare",
  "Final invoice and customer review",
];
