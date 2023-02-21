-- create the Users table
CREATE TABLE users (
  id UUID NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  role VARCHAR(20) NOT NULL,
  functionalRole VARCHAR(20) NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

-- create the Projects table
CREATE TABLE projects (
  id UUID NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

-- create the Technologies table
CREATE TABLE technologies (
  id UUID NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW()
);

-- create the Project_Technologies table
CREATE TABLE project_technologies (
  id UUID NOT NULL PRIMARY KEY,
  projectId UUID NOT NULL,
  technologyId UUID NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkProjectId FOREIGN KEY (projectId) REFERENCES projects(id),
  CONSTRAINT fkTechnologyId FOREIGN KEY (technologyId) REFERENCES technologies(id)
);

-- create the User_Technologies table
CREATE TABLE user_technologies (
  id UUID NOT NULL PRIMARY KEY,
  userId UUID NOT NULL,
  technologyId UUID NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkUserId FOREIGN KEY (userId) REFERENCES users(id),
  CONSTRAINT fkTechnologyId FOREIGN KEY (technologyId) REFERENCES technologies(id)
);

-- create the User_Credentials table
CREATE TABLE user_credentials (
  id UUID NOT NULL PRIMARY KEY,
  userId UUID NOT NULL,
  password VARCHAR(255) NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkUserId FOREIGN KEY (userId) REFERENCES users(id)
);

-- create the Projects_Users table
CREATE TABLE projects_users (
  id UUID NOT NULL PRIMARY KEY,
  projectId UUID NOT NULL,
  userId UUID NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkProjectId FOREIGN KEY (projectId) REFERENCES projects(id),
  CONSTRAINT fkUserId FOREIGN KEY (userId) REFERENCES users(id)
);

-- create the Sessions table
CREATE TABLE sessions (
  id UUID NOT NULL PRIMARY KEY,
  userId UUID NOT NULL,
  token VARCHAR(255) NOT NULL,
  expiresAt TIMESTAMP NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkUserId FOREIGN KEY (userId) REFERENCES users(id)
);

-- create the Password_Resets table
CREATE TABLE password_resets (
  id UUID NOT NULL PRIMARY KEY,
  userId UUID NOT NULL,
  token VARCHAR(255) NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  updatedAt TIMESTAMP NOT NULL DEFAULT NOW(),
  CONSTRAINT fkUserId FOREIGN KEY (userId) REFERENCES users(id)
);
