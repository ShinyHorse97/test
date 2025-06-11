using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JonatanShlain_Final.Proj
{
    public class simracingStewards
    {
        public string theQuestion;
        public string[] answer;
        public int correctAnswer;
        public simracingStewards(string theQuestion, string[] answer, int correctAnswer)
        {
            this.theQuestion = theQuestion;
            this.answer = answer;
            this.correctAnswer = correctAnswer;
        }
        public string GetQuestion()
        {
            return theQuestion;
        }
        public string[] GetAnswers()
        {
            return answer;
        }
        public int GetCorrectAnswer()
        {
            return correctAnswer;
        }
    }
}