# [Design System]

A simple design system using monorepo with Turbo Repo and Storybook to create a documentation. It's built using tsup creating both `esm`/`cjs` variations, and exporting `dts` files for type safety. It's being deployed to npm with changeset for simplicity sake

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Components](#components)
- [Usage](#usage)
- [Documentation](#documentation)

## Features ✨

- Comprehensive set of UI components
- Accessible components out-of-the-box
- Easy to customize and extend
- Consistent design language
- TypeScript support
- Responsive design

## Installation 📦

```bash
# Using npm
npm install @ignite-d-kja/react @ignite-d-kja/tokens
```

### Setup
```tsx
// Import components as needed
import { Button, type ButtonProps } from '@ignite-d-kja/react';

// Use existing tokens
import { fontWeights, radii } from '@ignite-d-kja/tokens'
```


## Components 🧩

| Component     | Description                          |
|---------------|--------------------------------------|
| Heading       | Semantic headings with consistent styling |
| Text          | Paragraph text component             |
| Box           | Layout container with spacing props  |
| Button        | Interactive button element           |
| TextInput     | Form input field                     |
| TextArea      | Multi-line text input                |
| Checkbox      | Checkbox input with label            |
| Avatar        | User profile image component         |
| Multi-step    | Progress indicator for multi-step flows |

## Usage 🚀

### Basic Example
```tsx
import { Button } from '@ignite-d-kja/react';

function Page() {
  return (
    <Box>
      <Heading size="md">Welcome</Heading>
      <Text>This is a sample component</Text>
      <Button variant="secondary" size="sm">Example</Button>
    </Box>
  );
}
```

### Component Examples
**TextInput**
```tsx
<Input 
  placeholder="type something here..." 
/>
```

**Multi-step**
```tsx
<MultiStep
  steps={4}
  currentStep={2}
/>
```

## Documentation 📚

Full component documentation and prop API reference available [here](#)

### Peer Dependencies

- React
- Radix UI
- Stitches ( o7 boyz )
- Phosphor Icons
