CREATE TABLE IF NOT EXISTS entries (
  id TEXT PRIMARY KEY,
  body TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS settings (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS diary_entries (
  id TEXT PRIMARY KEY,
  body TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS clubs (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  color TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS club_logs (
  id TEXT PRIMARY KEY,
  club_id TEXT NOT NULL,
  activity_date TEXT NOT NULL,
  activity TEXT NOT NULL,
  reflection TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS club_logs_by_club_date ON club_logs(club_id, activity_date DESC);
CREATE TABLE IF NOT EXISTS events (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  starts_at TEXT NOT NULL,
  note TEXT NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS events_by_date ON events(starts_at);
CREATE TABLE IF NOT EXISTS calendar_connections (
  email TEXT PRIMARY KEY,
  refresh_token TEXT NOT NULL,
  updated_at INTEGER NOT NULL
);
