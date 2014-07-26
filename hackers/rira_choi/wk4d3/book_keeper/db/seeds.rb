Author.destroy_all
Book.destroy_all

a1 = Author.create(:name => 'Jane Austen', :nationality => 'English', :dob => '1775/12/16', :image => 'http://i.imgur.com/YTio27a.jpg?1')
a2 = Author.create(:name => 'Charlotte Brontë', :nationality => 'English', :dob => '1816/4/21', :image => 'http://i.imgur.com/5kNUluH.jpg?1')
a3 = Author.create(:name => 'Elizabeth Gaskell', :nationality => 'English', :dob => '1810/11/29', :image => 'http://i.imgur.com/yeYOff2.jpg?1')


b1 = Book.create(:title => 'Pride and Prejudice', :year => '1813', :genre=> 'Romance novel', :description => 'Pride and Prejudice is a novel of manners by Jane Austen, first published in 1813. The story follows the main character Elizabeth Bennet as she deals with issues of manners, upbringing, morality, education, and marriage in the society of the landed gentry of early 19th-century England. Elizabeth is the second of five daughters of a country gentleman living near the fictional town of Meryton in Hertfordshire, near London.', :image => 'http://i.imgur.com/0eCBBJr.jpg?2', :author_id => a1.id)
b2 = Book.create(:title => 'Sense and Sensibility', :year => '1811', :genre=> 'Romance novel', :description => 'Sense and Sensibility is a novel by Jane Austen, and was her first published work when it appeared in 1811 under the pseudonym A Lady. A work of romantic fiction, better known as a comedy of manners, Sense and Sensibility is set in southwest England, London and Kent between 1792 and 1797, and portrays the life and loves of the Dashwood sisters, Elinor and Marianne. The novel follows the young ladies to their new home, a meagre cottage on a distant relative\'s property, where they experience love, romance and heartbreak. The philosophical resolution of the novel is ambiguous: the reader must decide whether sense and sensibility have truly merged.', :image => 'http://i.imgur.com/v45RLuP.jpg?1', :author_id => a1.id)
b3 = Book.create(:title => 'Persuasion', :year => '1818', :genre=> 'Romance novel', :description => 'More than eight years before the novel opens, Anne Elliot, then a lovely, thoughtful, warm-hearted 19-year old, accepted a proposal of marriage from the handsome young naval officer Frederick Wentworth. He was clever, confident, and ambitious, but poor and with no particular family connections to recommend him. Sir Walter, Anne\'s fatuous, snobbish father and her equally self-involved older sister Elizabeth were dissatisfied with her choice, maintaining that he was no match for an Elliot of Kellynch Hall, the family estate. Her older friend and mentor, Lady Russell, acting in place of Anne\'s late mother, persuaded her to break the engagement, for she, too, felt it was an imprudent match that was beneath Anne.', :image => 'http://i.imgur.com/nEECF2K.jpg?1', :author_id => a1.id)
b4 = Book.create(:title => 'Jane Erye', :year => '1847', :genre=> 'Romance novel', :description => 'Primarily of the bildungsroman genre, Jane Eyre follows the emotions and experiences of its title character, including her growth to adulthood, and her love for Mr. Rochester, the byronic master of fictitious Thornfield Hall. In its internalisation of the action — the focus is on the gradual unfolding of Jane\'s moral and spiritual sensibility and all the events are coloured by a heightened intensity that was previously the domain of poetry — the novel revolutionised the art of fiction.', :image => 'http://i.imgur.com/1sE6Orr.jpg?1', :author_id => a2.id)
b5 = Book.create(:title => 'Villette', :year => '1853', :genre=> 'Romance novel', :description => 'Villette /viːˈlɛt/ is an 1853 novel by Charlotte Brontë. After an unspecified family disaster, the protagonist Lucy Snowe travels from England to the fictional French-speaking city of Villette to teach at a girls\' school, where she is drawn into adventure and romance.Villette was Charlotte Brontë\'s fourth novel. It was preceded by the posthumously published The Professor, her first, and then Jane Eyre and Shirley.', :image => 'http://i.imgur.com/lIhXd0P.jpg?1', :author_id => a2.id)
b6 = Book.create(:title => 'North and South', :year => '1855', :genre=> 'Social novel', :description => 'North and South is the second social novel and the fourth overall by English writer Elizabeth Gaskell. With Wives and Daughters (1865) and Cranford (1853), it is one of Elizabeth Gaskell\'s best known novels and produced two television adaptations - one in 1975 and the other at the end of 2004. In North and South Elizabeth Gaskell returns to the precarious situation of workers and their relations with industrialists, but in a more balanced manner by focusing more on the thinking and perspective of the employers.', :image => 'http://i.imgur.com/9jFLZgk.jpg?1', :author_id => a3.id)

a1.books << b1 << b2 << b3
a2.books << b4 << b5
a3.books << b6