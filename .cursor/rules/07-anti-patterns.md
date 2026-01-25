# Anti-patterns and code smells

## Not allowed
- Overengineering
- Unnecessary abstractions
- Framework-like solutions for local problems

## Critical (fix immediately)
- Code duplication (3+ places)
- Long methods (20–30+ lines)
- Long classes (300–500+ lines)
- Long parameter lists (4+ params)
- Magic numbers / strings

## Medium priority
- Feature envy
- Data clumps
- Long if/switch chains
- Dead code
- Comments explaining unclear code

## Architectural
- God objects
- Circular dependencies
- Inappropriate intimacy
- Lazy classes
