#!/bin/bash
#
# Authors: Mirko Myllykoski (mirkom@cs.umu.se), 2020
#         Birgitte Brydsö (bbrydsoe@cs.umu.se), 2020

mkdir recipes
(
    cd recipes
    git init

    #
    # First commit
    #
    
    cat > cakerecipe.txt <<EOL
# Maraschino Devil's Food Cake
EOL
    git add cakerecipe.txt
    git commit -m "This is going to be a cake recipe"
    
    #
    # Second commit
    #
    
    cat > cakerecipe.txt <<EOL
# Maraschino Devil's Food Cake

## Ingredients

 - 2 cups sifted cake flour
 - 1 teaspoon soda
 - 1 egg
 - 1 1/3 cup sugar
 - 1/2 cup snowdrift
 - 1/2 cup buttermilk
 - 1/4 cup Maraschino cherry juice
 - 1/2 cup chopped Marachino cherries
 - 2 squares unsweetened chocolate, melted and cooled

## Directions

 1. All ingredients mixed in same bowl.
 2. Mixing time three minutes.
 3. Sift together in large bowl flour, soda, and sugar.
 4. Add snowdrift, buttermilk and cherry juice.
 5. Mix enough to dampen flow; beat 2 minutes-if by hand, count beating time
    only; with electric mixer use low speed, beating 2 minutes.
 6. Add eggs and chocolate.
 7. Beat 1 minute for snowdrift, smooth batter, then fold in 1/2 cup chopped
    cherries dusted with flour.
 8. Bake in two greased 9-inch layer pans lined with paper at 325f about 35
    minutes.
 9. Frost with fondant icing.
EOL
    git add cakerecipe.txt
    git commit -m "Add ingredients and directions"
    git branch fixed-recipe
    git checkout fixed-recipe
    cat > cakerecipe.txt <<EOL
# Maraschino Devil's Food Cake

## Ingredients

 - 2 cups sifted cake flour
 - 1 teaspoon soda
 - 2 eggs
 - 1 1/3 cup sugar
 - 1/2 cup snowdrift
 - 1/2 cup buttermilk
 - 1/4 cup Maraschino cherry juice
 - 1/2 cup chopped Marachino cherries
 - 2 squares unsweetened chocolate, melted and cooled

## Directions

 1. All ingredients mixed in same bowl.
 2. Mixing time three minutes.
 3. Sift together in large bowl flour, soda, and sugar.
 4. Add snowdrift, buttermilk and cherry juice.
 5. Mix enough to dampen flow; beat 2 minutes-if by hand, count beating time
    only; with electric mixer use low speed, beating 2 minutes.
 6. Add eggs and chocolate.
 7. Beat 1 minute for snowdrift, smooth batter, then fold in 1/2 cup chopped
    cherries dusted with flour.
 8. Bake in two greased 9-inch layer pans lined with paper at 325f about 35
    minutes.
 9. Frost with fondant icing.
EOL
    git add cakerecipe.txt
    git commit -m "Fix error in recipe - 1 egg should be 2 eggs"
    git checkout master
        cat > cakerecipe.txt <<EOL
# Maraschino Devil's Food Cake

## Ingredients

 - 2 cups sifted cake flour
 - 1 teaspoon soda
 - 2 eggs
 - 1 1/3 cup sugar
 - 1/2 cup snowdrift or butter
 - 1/2 cup buttermilk
 - 1/4 cup Maraschino cherry juice
 - 1/2 cup chopped Marachino cherries
 - 2 squares unsweetened chocolate, melted and cooled

## Directions

 1. All ingredients mixed in same bowl.
 2. Mixing time three minutes.
 3. Sift together in large bowl flour, soda, and sugar.
 4. Add snowdrift, buttermilk and cherry juice.
 5. Mix enough to dampen flow; beat 2 minutes-if by hand, count beating time
    only; with electric mixer use low speed, beating 2 minutes.
 6. Add eggs and chocolate.
 7. Beat 1 minute for snowdrift, smooth batter, then fold in 1/2 cup chopped
    cherries dusted with flour.
 8. Bake in two greased 9-inch layer pans lined with paper at 325f about 35
    minutes.
 9. Frost with fondant icing.
EOL
    git add cakerecipe.txt
    git commit -m "Suggested a replacement for snowdrift"
)
