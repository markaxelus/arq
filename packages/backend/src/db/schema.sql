-- Users Table
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  email TEXT UNIQUE NOT NULL,
  userame TEXT,
  google_access_token TEXT,
  google_refresh_token TEXT,
  token_expiry TIMESTAMP,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

-- Goals Table
CREATE TABLE IF NOT EXISTS goals (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL,
  activity_name TEXT,
  hours_per_week REAL NOT NULL,
  color TEXT NOT NULL,
  active BOOLEAN DEFAULT 1,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
)

-- Preferences Table
CREATE TABLE IF NOT EXISTS preferences (
 id TEXT PRIMARY KEY,
 user_id TEXT NOT NULL,
 work_start_time TEXT NOT NULL,
 work_end_time TEXT NOT NULL,
 preferred_time TEXT NOT NULL,
 break_duration INTEGER NOT NULL,
 block_length TEXT NOT NULL,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
)

-- Fixed Commitments Table
CREATE TABLE IF NOT EXISTS fixed_commitments (
  
)

-- Scheduled Table
CREATE TABLE IF NOT EXISTS scheduled (
  
)

-- Messages Table (Gmail)


-- Sync Status Table
CREATE TABLE IF NOT EXISTS sync_status (
  
)
-- Indexes 