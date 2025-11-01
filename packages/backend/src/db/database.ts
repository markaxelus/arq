import Database from 'better-sqlite3';
import { readFileSync } from 'fs';
import { join } from 'path';

let db:Database.Database | null = null;

export function initDatabase(dbPath?: string): Database.Database  {
  const path = dbPath || join(process.cwd(), 'arq_db');

  db = new Database(path);
  db.pragma('foreign_keys = ON');

  const schemaPath = join(__dirname, 'schema.sql')
  const schema = readFileSync(schemaPath)
  console.log(schemaPath)
  return db
}

initDatabase()