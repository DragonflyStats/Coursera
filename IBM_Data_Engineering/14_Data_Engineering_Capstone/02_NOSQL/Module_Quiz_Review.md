This **Graded Quiz: Querying Data in NoSQL Databases** evaluates your practical work from the MongoDB lab in the IBM Data Engineering Capstone Project. Specifically, it tests your ability to inspect imported JSON datasets and run basic queries and aggregation pipelines on the `catalog` database.

### Core Concepts Covered

* **Database & Collection Inspection:** Checking available databases on the MongoDB server (`show dbs`) and verifying collections inside the `catalog` database (`show collections`) after running `mongoimport`.


* **Document Counting & Filtering:** Verifying the total number of imported documents (`438`) and filtering the `electronics` collection to count specific product categories (`389` laptops).


* **Aggregation Pipelines:** Grouping and averaging fields—such as calculating the average screen size (`6`) for mobile phones—using `$match` and `$group` operators.



### Key Takeaways from Your Attempt

* **Dataset Version Differences:** The quiz questions map directly to the exact numerical outputs from your terminal in Tasks 1 through 7 of the lab, which reflect an updated `catalog.json` dataset (`438` total documents and `389` laptops rather than older dataset counts).


* **Question Shuffling:** Because Coursera randomizes question order across retakes, matching each answer directly to the prompt text (rather than memorizing question numbers) prevents misalignments.
