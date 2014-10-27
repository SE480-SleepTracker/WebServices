using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SE450Database;
using System.Data.Linq;

namespace SE450_Sleep_Tracker_Web_API.Models
{
    public class ChainAnalysis
    {
        public ChainAnalysis(Chn_ChainAnalysis analysis)
        {
            this.ID = analysis.Chn_ID;
            // TODO: finish
        }

        #region Chain Analysis Object
        public int ID
        {
            get;
            set;
        }

        public User AssociatedUser
        {
            get;
            set;
        }

        public String ProblemBehavior
        {
            get;
            set;
        }
        
        public DateTime Time
        {
            get;
            set;
        }
        #endregion

        #region Children
        
        public String BehaviorChain
        {
            get;
            set;
        }

        
        public List<String> Thoughts
        {
            get;
            set;
        }

        List<String> Behaviors
        {
            get;
            set;
        }

        public List<String> Emotions
        {
            get;
            set;
        }

        public List<String> LongTermConsequences
        {
            get;
            set;
        }

        public List<String> ImmediateConsequences
        {
            get;
            set;
        }

        
        public List<String> WaysToPrevent
        {
            get;
            set;
        }

        
        public List<String> LongTermGoals
        {
            get;
            set;
        }

        
        public List<String> ShortTermGoals
        {
            get;
            set;
        }

        
        public List<String> GoalsForTomorrow
        {
            get;
            set;
        }
        #endregion
    }
}