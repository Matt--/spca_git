class Fosterer < ActiveRecord::Base
  attr_accessible :motivation, :catnursing, :catfeeding, :catbottlefeed, :catinjured, 
		  :dognursing, :dogfeeding, :dogbottlefeed, :doginjured,
		  :rabgui, :hedgehoginjured, :hedgehogbottle, :birdsinjured, :birdstoung, :livestock,
		  :volunteer_id,
		  :ownhome, :inspecting, :rooms, :roomwarm, :hutch, 
		  :rabbithutch, :aviary, :livestockfenced,
		  :homedesc, :numadulta, :numchild, :ages,
		  :numhoursperday, :worktype, :secondperson, 
		  :allmembersagree, :bringcentre, :transportdesc,
		  :agreement
  
  validates :agreement, :presence => true
  
      
  belongs_to :volunteer
end
