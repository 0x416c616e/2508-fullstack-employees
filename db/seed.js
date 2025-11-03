import db from "#db/client";
import { createEmployee } from "#db/queries/employees";

await initDb();

async function initDb() {
  await db.connect();
  await seedEmployees();
  await db.end();
  console.log("Database has been seeded.");
}

async function seedEmployees() {
  for (let i = 0; i < 20; i++) {
    const employee = {
      name: "Generic Employee " + i,
      birthday: "1969-04-20",
      salary: Math.floor(Math.random() * 500000),
    };
    await createEmployee(employee);
  }
}
