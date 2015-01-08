# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#cookies post
post1 = Post.new
post1.title = "Best Chocolate Chip Cookies"
post1.kind = "image"
post1.content = "http://cupcakesandcashmere.com/files/styles/620_0s/public/wp-content/uploads/2012/04/cookie5.jpg"

2.times do
	post1.hearts.create
end

# brown sugar bread
post2 = Post.new (title: "Brown Sugar Pull Apart Bread", kind: "text")
post2.content = <<CONTENT 
INGREDIENTS
Dough:
⅓ cup milk
¼ cup water
2¼ teaspoons active dry yeast
¼ cup sugar, divided
4 tablespoons unsalted butter, melted
2¾ cups all-purpose flour
½ teaspoon salt
1 teaspoon vanilla extract
2 eggs
Filling and finish:
¾ cup light or dark brown sugar
2 teaspoons ground cinnamon
pinch of salt
3 tablespoons unsalted butter, softened
2 tablespoons sliced almonds (for topping, optional)

INSTRUCTIONS
Make the dough:
In a large bowl, heat milk and water until warm - about 30 seconds in the microwave should do. Add the yeast and 1 tablespoon sugar. Whisk together until thoroughly combined and let sit until foamy, about 10 minutes.
Add the remaining sugar and the rest of the dough ingredients (butter through eggs) to the milk mixture, stirring everything until it comes together to form a shaggy ball. Then knead the dough by hand (or with a dough hook attachment) until it’s smooth and elastic - this will take about 10 minutes (or less if using a stand mixer). Shape dough into a ball and place in a lightly oiled bowl, cover and let it rise until doubled in size, 1-2 hours.

Make the filling:
While the dough rises, combine the brown sugar, cinnamon and salt in a small bowl. Set aside.
Shape and bake the loaf:
Grease a 9"x5" loaf pan or pullman loaf pan (for a loaf with perfectly straight sides).
After the dough has risen, turn it out onto a lightly floured work surface. Roll out dough to a 12"x24" rectangle.

Spread the butter over the dough into an even layer. Sprinkle the brown sugar filling over the butter.
Using a sharp knife or bench scraper, cut dough lengthwise into 4 equal-sized strips. Stack the strips on top of one another and cut the stack into 6 equal-sized pieces.

At this point, you can layer the dough stacks, cut sides up, neatly in the loaf pan. (It helps to tilt the loaf pan a bit to keep your stacks from folding over on themselves.) Or, for a messier look, cut each dough stack in half, stretch it into a rectangle, fold it in half and then place in the pan with the folded edge perpendicular to the bottom of the pan. It's OK if some stacks stick up higher than others.

Cover loaf with a clean kitchen towel and let rise until doubled in size, about 1 hour.
About 15 minutes before dough has finished rising, preheat oven to 350 degrees.
Sprinkle top of loaf with sliced almonds, if using, and bake for 40-45 minutes until golden brown. If the top of the loaf gets too brown before it is done baking, cover loosely with foil.
Remove pan from oven and turn out bread onto a wire rack. Let cool slightly before serving.

CONTENT
post2.save
2.times { post2.hearts.create }

# peach cobbler
post3 = Post.new (
	title: "Peach Cobbler"
	kind: "image"
	content: "http://cupcakesandcashmere.com/files/styles/620_0s/public/PEACH1_0.png"
)
post3.save
2.times { post3.hearts.create }

# chocolate cake

post4 = Post.new (
	title: "Brooklyn Chocolate Cake"
	kind: "image"
	content: "http://cupcakesandcashmere.com/files/styles/620_0s/public/chocolate9.jpg"
)
post4.save
3.times { post4.hearts.create }
