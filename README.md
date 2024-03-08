# README

# String Calculator Rails App

This is a simple Ruby on Rails application that implements a String Calculator with support for various input formats, custom delimiters, and exception handling for negative numbers.

## Requirements

- Ruby version: 3.2.1
- Rails version: 7.1.2

## Getting Started

1. **Clone the Repository:**

    ```bash
    git clone git@github.com:creativesoulexplr/calculator_test.git
    cd calculator_test
    ```

2. **Install Dependencies:**

    Make sure you have Ruby 3.2.1 installed. You can use a version manager like RVM or rbenv.

    ```bash
    # Example using RVM
    rvm install 3.2.1
    ```

    Install Rails:

    ```bash
    gem install rails -v 7.1.2
    ```

    Install project dependencies:

    ```bash
    bundle install
    ```

4. **Run the Application:**

    Start the Rails server:

    ```bash
    rails server
    ```

    The application will be accessible at `http://localhost:3000`.

## Usage

Navigate to the provided URL and use the String Calculator form to test various input scenarios.

## Running Tests

Run the test suite to ensure everything is working as expected:

```bash
bundle exec rspec
