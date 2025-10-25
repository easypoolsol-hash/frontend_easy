# Constitutional Core - Constitutions Directory

This directory contains individual constitutional documents that define specific aspects of the Frontend Easy architecture.

## Constitution Files

### `technology_constitution.yaml`

**Purpose**: Defines approved technologies, packages, and SDK versions

- Approved technologies and their platform support
- Package approval list with constitutional rationale
- Technology-specific implementation requirements
- SDK version consistency requirements

### `config_constitution.yaml`

**Purpose**: Defines runtime configuration and environment settings

- API endpoints and timeouts
- Authentication settings
- UI/UX configuration
- Environment-specific overrides (dev/staging/prod)

### `ui_constitution.yaml`

**Purpose**: Defines UI patterns and user experience standards

- Approved UI patterns and state management
- Widget usage guidelines
- Responsive design requirements
- Accessibility standards

### `state_management_constitution.yaml`

**Purpose**: Defines state management patterns and Riverpod usage

- Provider patterns and naming conventions
- AsyncValue handling requirements
- State class patterns with Freezed
- Dependency injection rules

## Constitutional Principles

1. **Separation of Concerns**: Each constitution addresses a specific architectural concern
2. **Constitutional Review**: Changes to constitutions require review and approval
3. **Implementation Requirements**: Constitutions define mandatory patterns and forbidden practices
4. **Version Control**: All constitutions are versioned and auditable

## Usage

Constitutions are loaded by the `ConstitutionalReader` and used by detectors to enforce architectural compliance. The `master_ssot_schema.json` validates constitution structure and content.

## Adding New Constitutions

1. Create a new YAML file following the naming pattern: `{topic}_constitution.yaml`
2. Define clear constitutional authority and scope
3. Include implementation requirements and validation rules
4. Update the master SSOT schema if new validation is needed
5. Add to constitutional enforcement detectors as appropriate