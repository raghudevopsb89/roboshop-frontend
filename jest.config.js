const nextJest = require('next/jest');

// Provide the path to the Next.js app to load next.config.js and .env files
const createJestConfig = nextJest({ dir: './' });

// Custom Jest config passed to Next's transform-aware config factory
const customJestConfig = {
    setupFilesAfterEnv: ['<rootDir>/jest.setup.js'],
    testEnvironment: 'jest-environment-jsdom',
    testPathIgnorePatterns: ['<rootDir>/.next/', '<rootDir>/node_modules/'],
};

module.exports = createJestConfig(customJestConfig);
