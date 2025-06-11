using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JonatanShlain_Final.Proj
{
    public partial class SimracingStewards : System.Web.UI.Page
    {
        public int score = 0;
        public int questionNumber;
        public simracingStewards currentQuestion;
        public string msg = "<h1>Welcome to Simracing Stewards<h1> <h2> your objective is to quess who's at fault for the incident shown<h2>";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["qNum"] == null)
            {
                questionNumber = 0;

            }
            else
            {
                questionNumber = int.Parse(Session["qNum"].ToString());
            }
            if (Session["score"] == null)
            {
                score = 0;

            }
            else
            {
                score = int.Parse(Session["score"].ToString());
            }

            string question = "https://packaged-media.redd.it/m73mvwjc0j5f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749682800&s=58425d26099c98ae0b8ba751a3895a77c7ddc12a";
            string[] arr1 = { "Green Porsche", " Orange BMW", "Racing Incident"};
            int correctAnswer1 = 1;
            simracingStewards q1 = new simracingStewards(question, arr1, correctAnswer1);
            
            string question2 = "https://packaged-media.redd.it/f79sejrftu4f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749686400&s=1e8b1b75a2036d51aaf1c75eebc81d6b80848bd3";
            string[] arr2 = { "Red BMW", " Blue Aston", "Racing Incident" };
            int correctAnswer2 = 2;
            simracingStewards q2 = new simracingStewards(question2, arr2, correctAnswer2);

            string question3 = "https://packaged-media.redd.it/cdhgsdt1z16f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=0cb55f99f1b8b548dd66a82f9613620890f3c760";
            string[] arr3 = { "Purple Subaru", " Blue Subaru", "Racing Incident" };
            int correctAnswer3 = 0;
            simracingStewards q3 = new simracingStewards(question3, arr3, correctAnswer3);

            string question4 = "https://packaged-media.redd.it/odaodbcmz76f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=7ee65f2f174cb1a5510c6b9f00b973a0aef19e25";
            string[] arr4 = { "Inside car", "Outside car", "Racing Incident" };
            int correctAnswer4 = 0;
            simracingStewards q4 = new simracingStewards(question4, arr4, correctAnswer4);

            string question5 = "https://packaged-media.redd.it/r3ms8gw8lc6f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=a36b8a8c5c46b98490facb0c1aa49ea248c16005";
            string[] arr5 = { "POV car", "Red Ferrari", "Racing Incident" };
            int correctAnswer5 = 0;
            simracingStewards q5 = new simracingStewards(question5, arr5, correctAnswer5);

            string question6 = "https://packaged-media.redd.it/86oxdm457r5f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=4079b958ffefee57950c5b4e88ec3e3703ec2f1b";
            string[] arr6 = { "Yellow mx5", "White mx5", "Racing Incident" };
            int correctAnswer6 = 1;
            simracingStewards q6 = new simracingStewards(question6, arr6, correctAnswer6);

            string question7 = "https://packaged-media.redd.it/e0b7wa5qa65f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=84504d8f69156b09c3a09392c3b132177e1854d6";
            string[] arr7 = { "POV bike", "Outside bike", "Racing Incident" };
            int correctAnswer7 = 0;
            simracingStewards q7 = new simracingStewards(question7, arr7, correctAnswer7);

            string question8 = "https://packaged-media.redd.it/jsmtcty0976f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=2fb49c286c78f23140231726fb478050e27f37d2";
            string[] arr8 = { "Orange f2", "Blue f2", "Racing Incident" };
            int correctAnswer8 = 2;
            simracingStewards q8 = new simracingStewards(question8, arr8, correctAnswer8);

            string question9 = "https://packaged-media.redd.it/2w2alzbf5y4f1/pb/m2-res_600p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=d09f1bf1c3469a3b5f47c2531522f09ffb03baa7";
            string[] arr9 = { "Brown GTR", "Blue Supra", "Racing Incident" };
            int correctAnswer9 = 0;
            simracingStewards q9 = new simracingStewards(question9, arr9, correctAnswer9);

            string question10 = "https://packaged-media.redd.it/rt0pwrrf1b5f1/pb/m2-res_480p.mp4?m=DASHPlaylist.mpd&v=1&e=1749690000&s=621b5ff2551db2f12010be7a8f4756040b6bd58a";
            string[] arr10 = { "Ferrari", "BMW", "Racing Incident" };
            int correctAnswer10 = 1;
            simracingStewards q10 = new simracingStewards(question10, arr10, correctAnswer10);

            simracingStewards[] QuestionArr = { q1, q2, q3, q4, q5, q6, q7, q8, q9, q10};

            if (IsPostBack)
            {
                int userResult = int.Parse(Request.Form["userResult"].ToString());
                if (userResult == QuestionArr[questionNumber].correctAnswer)
                {
                    msg = "Correct Answer";
                    score++;
                    Session["score"] = score;
                }
                else
                {
                    msg = "Wrong Answer";
                }

                questionNumber++;
                Session["qNum"] = questionNumber;

            }
            if (questionNumber < QuestionArr.Length)
            {
                currentQuestion = QuestionArr[questionNumber];
            }
            else
            {
                Response.Redirect("EndGame.aspx");
            }
        }
    }
}