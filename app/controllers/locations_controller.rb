class LocationsController < ApplicationController
  def index
    @locations = [
      Location.new(name: 'Amit Bhatia Libe Cafe', location: 'Olin Library', region: 'Central', type: 'cafe', calendar_address: 'g1pfs9edl1ks5o2dbc58e7fhm8'),
      Location.new(name: 'Atrium Cafe', location: 'Sage Hall', region: 'Central', type: 'cafe', calendar_address: '9g3c81c0p2loacsbvrjj5o371c'),
      Location.new(name: 'Bear Necessities', location: 'RPCC', region: 'North', type: 'cafe', calendar_address: 'h319a8fk4b5lv0644ebkskhha8'),
      Location.new(name: "Bear's Den", location: 'Willard Straight Hall', region: 'Central', type: 'cafe', calendar_address: '9pkqrt6elrngarcrf1s4vvdqf4'),
      Location.new(name: 'Big Red Barn', location: 'Behind A.D White house', region: 'Centrail', type: 'cafe', calendar_address: 'u1kmovdep2qlmr86io8h4p3ee8'),
      Location.new(name: 'Cafe Jennie', location: 'Cornell Store', region: 'Central', type: 'cafe', calendar_address: '05r2nhfjbnknmsccgd6u8dij0g'),
      Location.new(name: "Carol's Cafe", location: 'Balch Hall', region: 'North', type: 'cafe', calendar_address: '7sii70faon9ta2vpoehr69415s'),
      Location.new(name: 'Cascadeli', location: 'Willard Straight Hall', region: 'Central', type: 'cafe', calendar_address: 'ju94n6trv0ccoqcnd5u7otle50'),
      Location.new(name: 'Dairy Bar', location: 'Olin Library', region: 'Central', type: 'cafe', calendar_address: 'prvu4v0nr4eu94mqu9q7busa6g'),
      Location.new(name: "Goldie's", location: 'Physical Sciences', region: 'Central', type: 'cafe', calendar_address: 'kb9ce5jj2f6oli3c90tc7j6peo'),
      Location.new(name: 'Ivy Room', location: 'Willard Straight', region: 'Central', type: 'cafe', calendar_address: 've9kl6pq8esjfqbhg03qnjtgjg'),
      Location.new(name: "Jansen's Market", location: 'Noyes Rec Center', region: 'West', type: 'cafe', calendar_address: '0dqnc6l2mt25okch8nimsnojhg'),
      Location.new(name: "Martha's Cafe", location: 'MVR', region: 'Central', type: 'cafe', calendar_address: 'sperf092mrbt796rr36toeqrus'),
      Location.new(name: "Mattin's Cafe", location: 'Duffield Hall', region: 'Central', type: 'cafe', calendar_address: '1qman2n728pqjuq5ntaoofc7v0'),
      Location.new(name: 'One World Cafe', location: 'Anabel Taylor Hall', region: 'Central', type: 'cafe', calendar_address: '5tejc0thb8glgfvru6gfskuvr0'),
      Location.new(name: "Rusty's", location: 'Uris Hall', region: 'Central', type: 'cafe', calendar_address: 'sqp9nd9rt727fm7v2sgmfelkps'),
      Location.new(name: 'Synapsis Cafe', location: 'Weill Hall', region: 'Central', type: 'cafe', calendar_address: 'h8v5tm5eknsvhgm65bv30dqj0o'),
      Location.new(name: 'Trillium', location: 'Kennedy Hall', region: 'Central', type: 'cafe', calendar_address: 'i8v43jd76mugc62voucp4dqn9s'),
      Location.new(name: 'Trillium Express', location: 'Kennedy Hall', region: 'Central', type: 'cafe', calendar_address: 'rpp0nrlp282t9h18hhol5f0dkc'),
      Location.new(name: 'West Side Express', location: 'Hans Bethe House', region: 'West', type: 'cafe', calendar_address: 'e6qo48rvkpsc89p1ochs27pmac'),

      Location.new(name: '104West!', location: '104 West Avenue', region: 'West', type: 'dining', calendar_address: 'vlpa2hk9677m9bcbh6n2dtpn7k'),
      Location.new(name: 'Becker', location: 'Carl Becker House', region: 'West', type: 'dining', calendar_address: 'di2s9rofto7m8innt5e8vftl0o'),
      Location.new(name: 'Bethe', location: 'Hans Bethe House', region: 'West', type: 'dining', calendar_address: 'h0nfohf0d90ot1rmukjphj7ajc'),
      Location.new(name: 'Cook', location: 'Alice Cook House', region: 'West', type: 'dining', calendar_address: '27hli58rto1hpf15m3sbe54sak'),
      Location.new(name: 'Keeton', location: 'William Keeton House', region: 'West', type: 'dining', calendar_address: 'ekd72jfc2qai617oloa2b0ibp0'),
      Location.new(name: 'North Star', location: 'Appel', region: 'North', type: 'dining', calendar_address: 'ecbhqf3ibeei09dds91viod5g8'),
      Location.new(name: 'Okenshields', location: 'Willard Straight Hall', region: 'Central', type: 'dining', calendar_address: '3hku0mr66kapq1lh8fakug9kko'),
      Location.new(name: 'Risley Dining', location: 'Risley Hall', region: 'North', type: 'dining', calendar_address: 'hq98btd396f3077p88d30c84fs'),
      Location.new(name: 'RPCC', location: 'RPCC', region: 'North', type: 'dining', calendar_address: '32uglqeiqfo9edhpp4tka8oqsc'),
      Location.new(name: 'Rose', location: 'Flora Rose House', region: 'West', type: 'dining', calendar_address: 'mo4mqfpe88ucqaer728ovfei18')
    ]

    # @locations.each do |l|
    #   puts "===== #{ l.name } ====="
    #   l.is_open = l.is_open?
    # end
    @locations.delete_if { |l| !l.is_open? }
  end

end
