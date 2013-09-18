class Fosterer2 < ActiveRecord::Base
  attr_accessible :ownhome, :inspecting, :rooms, :roomwarm, :hutch, :rabbithutch, :aviary, :livestockfenced,
		  :homedesc, :numadulta, :numchild, :ages,
		  :numhoursperday, :worktype, :secondperson, :allmembersagree, :bringcentre, :transportdesc,
		  :agreement, :volunteer_id
  
  
  validates :agreement, :presence => true
  belongs_to :volunteer

end
