CREATE TABLE IF NOT EXISTS "sandbox" (
  "id" SERIAL,
  "javascript" text,
  "html" text,
  "created" TIMESTAMP default NULL,
  "last_viewed" TIMESTAMP default NULL,
  "url" char(255) default NULL,
  "streaming" char(1) default 'n',
  "streaming_key" char(32),
  "streaming_read_key" char(32),
  "active_tab" varchar(10),
  "active_cursor" BIGINT,

  "revision" BIGINT default 1,

  PRIMARY KEY  ("id")
);
CREATE INDEX "viewed" on "sandbox" ("last_viewed");
CREATE INDEX "url" on "sandbox" ("url");
CREATE INDEX "streaming_key" on "sandbox" ("streaming_key");
CREATE INDEX "spam" on "sandbox" ("created","last_viewed");
CREATE INDEX "revision" on "sandbox" ("url", "revision");

CREATE TABLE IF NOT EXISTS "owners" (
  "id" SERIAL,
  "name" char(255) NOT NULL,
  "url" char(255) NOT NULL,
  "revision" BIGINT default 1,
  
  PRIMARY KEY  ("id")
);
CREATE INDEX "name_url" on "owners" ("name", "url", "revision");


CREATE TABLE IF NOT EXISTS "ownership" (
  "name" char(255) NOT NULL,
  "key" char(255) NOT NULL,

  PRIMARY KEY ("name")
);
CREATE INDEX "name_key" on "ownership" ("name", "key");

