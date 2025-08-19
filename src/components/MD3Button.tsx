import React from 'react';
import Button, { ButtonProps } from '@mui/material/Button';
import { CssVarsProvider, extendTheme } from '@mui/material/styles';

// Material Design 3 themed button using MUI's CSS variables provider.
const theme = extendTheme({
  colorSchemes: {
    light: {
      palette: {
        primary: {
          main: '#6750A4', // MD3 primary color
        },
      },
    },
  },
});

export default function MD3Button(props: ButtonProps) {
  return (
    <CssVarsProvider theme={theme}>
      <Button variant="filled" {...props}>
        {props.children}
      </Button>
    </CssVarsProvider>
  );
}
