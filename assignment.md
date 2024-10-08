# Fortune 500 Companies Full-Stack

## Overview

You are tasked with creating a simple web application using Vue.js (v3) that interfaces a backend using data from the list of companies from Fortune 500.
The application should allow users to search for companies using various parameters and display the results in a user-friendly interface. 
Additionally, the application should provide a detail view for each company, showing various data about its financial performance and key company information.

## Dataset Details

The dataset for the application can be found in [fortune1000_2024.csv](./fortune1000_2024.csv). More details on the structure and values can be found in [Kaggle > 2024 Fortune 1000 Companies](https://www.kaggle.com/datasets/jeannicolasduval/2024-fortune-1000-companies).

## Functional Requirements

### 1. Search View

#### Search Functionality:

-   Implement a search input that allows users to query the list of companies by their title or stock market ticker.
-   The search should allow users to enter a query term and it will display all companies whose **title or ticker** contain the query term.
    -   **Example 1**: The term "cle" would return the following companies because their names match:
        - Clean Harbors
        - Clear Channel Outdoor Hldgs.
        - Cleveland-Cliffs
        - Marsh & McLennan
        - Oracle
        - Pinnacle West Capital
        - Scotts Miracle-Gro
        - Stericycle
    - **Example 2**: The term "ab" would return the following companies because their names or ticker match:
        - Abbott Laboratories
        - AbbVie
        - Abercrombie & Fitch
        - ABM Industries
        - Airbnb
        - Alphabet
        - Asbury Automotive Group
        - Bio-Rad Laboratories
        - Cabot
        - Charles River Laboratories International
        - Charles Schwab
        - Ecolab
        - Equitable Holdings
        - ESAB
        - IDEXX Laboratories
        - Jabil
        - Labcorp Holdings
        - Peabody Energy
        - Sabre
        - Seaboard
        - Wabash National
        - Westinghouse Air Brake Technologies

#### Search Results Display:

-   Display the search results in either a list or grid format, showing key information. You may choose between list or grid based on your overall UI implementation approach. You are free to decide the order and importance of the information. Key information includes (in alphabetical order):
    - CEO
    - Company name
    - Company Type (Private or Public)
    - Industry
    - Location
    - Market Cap
    - Number of Employees
    - Profitable
    - Profits
    - Revenue
    - Sector
    - Ticker
    - Website
-   Be sure to consider and implement how to best handle edge cases, failures, and communicate the state of the application to the user.

### 2. Detail View

#### Navigation:

-   Implement routing to handle navigation between the search results and the detail view of a company.
-   Users should be able to share the URL of the page they are on with others which will show the same information as displayed currently.

#### Detail Page:

-   When a user clicks on a search result, navigate to a detail page that retrieves and displays detailed company information about the selected company.

#### Display all company details available

-   Using the data source and documentation provided, display all the details in the most appropriate format to the user.
-   Use your best judgement for how to present this data logically, cleanly, and understandably.

#### Error Handling:

-   Ensure that if detailed data cannot be retrieved, the user is informed with a user-friendly message. They should be able to navigate back to the search results easily.

## Technical Requirements

### 1. Frameworks and Tools (Front-end):

-   Use Vue.js (version 3) on its own or with NuxtJs as the primary front-end framework for this project.
-   You may use any CSS framework or library (e.g., Tailwind, Bootstrap, NuxtUI) or write custom CSS.
-   Use TypeScript as the language and ensure you use its type system well.
-   Ensure cross-browser compatibility for modern browsers (Chrome, Firefox, Edge).
-   Ensure support for various screen sizes such as Desktop and Mobile.

### 2. Frameworks and Tools (Back-end):

-   Your backend should use a SQL-based RDBMS of your choosing (e.g. PostgreSQL, MySQL). The choice is not important and will not be evaluated, but use of one is required.
-   Your backend should be written for a Node-like runtime (e.g. Node, Deno, Bun, etc). You may use any strongly-typed language which can run on the environment such as TypeScript, Haskell, PureScript, Reason, OCaml, etc. The choice is not important, and left open for your own ease of implementation and familiarity.

### 3. Code Quality:

-   Follow best practices for Vue.js development, and any frameworks you choose.
-   Write modular, reusable code, especially for the search results and company detail view.
-   Ensure your code is well-formatted and adheres to the coding style of the languages and frameworks you choose.
-   Ensure your code is documented as if you were working with other team members and possible new future maintainers.
-   Use version control appropriately as if you were working in a team environment with possible new future maintainers.

### 4. Error Handling and Edge Cases:

-   Handle cases in your UI and backend resulting from user input or underlying data.
-   Consider security best-practices. Although authentication is not required, design and implement this application as if it were exposed to the internet.

## 5. Scale

-   Assume this application will be used for orders of magnitude more data and users.
-   Although the sample dataset is small, this may be used in the future for 10,000s to 1,000,000 companies.
-   Similarly, although the expected users and their usage patterns cannot be known ahead of time, use your best judgement to support 100s-1000s of simultaneous users.

## Submission Guidelines

### 1. Create a GitHub Repository:

-   Create a GitHub repository and push your code there.
-   Either create a public repository or invite the interviewers to a private one.

### 2. Instructions:

-   Provide clear instructions in a `README.md` file on how other maintainers would setup and run your application.

## Assessment Criteria

### 1. Functionality:

-   The application should run smoothly and perform all required tasks as described.
-   Error handling should be robust, with appropriate feedback provided to the user.

### 2. Code Quality:

-   The code should be well-structured, easy to read, and follow best practices.
-   On the front-end, proper use of Vue.js conventions and modern TypeScript features will be evaluated.
-   On the back-end, conventions of the back-end languages and/or frameworks used will evaluated.

### 3. User Experience and Design:

-   The application should be intuitive to use, with a clean and responsive design.
-   Navigation between views should be seamless and maintain state as expected.

### 4. Documentation:

-   The `README.md` file should provide clear and complete instructions on setting up and running the application.
-   Any additional information relating to rationale such as software design decisions, architecture, and limitations is highly encouraged.
