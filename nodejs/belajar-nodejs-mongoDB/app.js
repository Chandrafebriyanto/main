const { MongoClient } = require("mongodb");
// or as an es module:
// import { MongoClient } from 'mongodb'

// Connection URL
const url = "mongodb://localhost:27017";
const client = new MongoClient(url);

// Database Name
const dbName = "candra";

async function main() {
  // Use connect method to connect to the server
  await client.connect();
  console.log("Connected successfully to server");
  const db = client.db(dbName);
  const collection = db.collection("mahasiswa");

  // tittle: syntax mongodb
  // the following code examples can be pasted here...
  // note: Insert some mahasiswa documents
  const insertResult = await collection.insertMany([
    { name: "John Doe", age: 20, major: "Computer Science" },
    { name: "Jane Smith", age: 22, major: "Mathematics" },
    { name: "Alice Johnson", age: 21, major: "Physics" },
  ]);
  console.log("Inserted documents =>", insertResult.insertedCount);

  // note: find mahasiswa documents
  const findResult = await collection.find({}).toArray();
  console.log("Found documents =>", findResult);

  // note: find mahasiswa documents filter
  const findResultFilter = await collection
    .find({ nama: "John Doe" })
    .toArray();
  console.log("Found documents =>", findResultFilter);

  // note: Update a mahasiswa document
  const updateResult = await collection.updateOne(
    { name: "John Doe" },
    { $set: { age: 21 } }
  );
  console.log("Updated documents =>", updateResult.modifiedCount);

  // note: Delete a mahasiswa document
  const deleteResult = await collection.deleteOne({ name: "Jane Smith" });
  console.log("Deleted documents =>", deleteResult.deletedCount);

  return "done.";
}

main()
  .then(console.log)
  .catch(console.error)
  .finally(() => client.close());
