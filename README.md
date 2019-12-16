# SESAC Code Challenge

## The Challenge:

### Problem 1

```
Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the grid and can move one step at a time in any of the four directions. Can you rescue the princess?
```
[Click here to see the problem on HackerRank](https://www.hackerrank.com/challenges/saveprincess/problem)

### Problem 2

```
In this version of "Bot saves princess", Princess Peach and bot's position are randomly set. Can you save the princess?
```
[Click here to see the problem on HackerRank](https://www.hackerrank.com/challenges/saveprincess2)

## Setup

To setup locally, run the following commands:
 - `$ git clone git@github.com:JoriPeterson/sesac_code_challenge.git`
 - `$ cd sesac_code_challenge`
 - `$ gem install minitest`
 - `$ bundle install`

## Design

This repo is broken down into two main directories:
`lib` & `test`

The `lib` directory holds the solutions to both the problems listed above. Problem 1 is named `PrincessPath`. Problem 2 is `NextMove`

For testing purposes, the code has been incased in classes and extra methods have been added to create the effect of HackerRank AI.

Copy and paste the code below the comment `code for hackerrank is below:` into the solution box on the HackerRank website.

## Testing

Testing for this repo is done in `Minitest`.
- To run the test suite, simply run `$ rake` from your command line.
- To run an individual test file, run `$ ruby test/<file_name>` from your command line.
- To open the coverage report for testing, first run `$ rake`, then run `$ open coverage/index.html` from your command line and the coverage report will open in your web browser.

## Versions

* Built in Ruby 2.4.9
