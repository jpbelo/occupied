import React, { Component } from 'react'
import PropTypes from 'prop-types'
import styled, { css } from 'styled-components'
import {
  applyStyleModifiers,
  styleModifierPropTypes,
} from 'styled-components-modifiers'

const MODIFIER_CONFIG = {
  primary: ({ theme }) => css`
    background-color: ${theme.colors.grey.light};
    &[href^='http'] {
      background-color: ${theme.colors.primary.bgAlt};
      &:hover {
        background: ${theme.colors.primary.bg};
      }
    }
  `,
  secondary: ({ theme }) => css`
    background-color: ${theme.colors.grey.light};
    &[href^='http'] {
      background-color: ${theme.colors.secondary.bgAlt};
      &:hover {
        background: ${theme.colors.secondary.bg};
      }
    }
  `,
  asButton: () => css`
    font-size: 11px;
    display: inline-block;
    border-radius: 6px;
    padding: 0 10px;
    margin-right: 6px;
    margin-bottom: 6px;
    line-height: 2;
    transition: background-color 250ms ease-in-out;
  `,
  asText: ({ theme }) => css`
    font-size: 11px;
    color: ${theme.colors.grey.bgAlt};
    &:not(:last-child)::after {
      content: ', ';
    }
    &[href^='http'] {
      color: ${theme.colors.grey.bg};
      &:hover {
        color: ${theme.colors.primary.main};
      }
    }
  `,
}

const StyledTagButton = styled.a`
  ${applyStyleModifiers(MODIFIER_CONFIG)};
`

export default class TagButton extends Component {
  render() {
    const { url, name, modifiers } = this.props
    const layoutModifiers = modifiers || ['asButton', 'primary']

    return (
      <StyledTagButton
        as={!url && 'span'}
        target={url && '_blank'}
        href={url}
        modifiers={layoutModifiers}
      >
        {name}
      </StyledTagButton>
    )
  }
}

TagButton.propTypes = {
  name: PropTypes.string.isRequired,
  url: PropTypes.string,
  modifiers: styleModifierPropTypes(MODIFIER_CONFIG),
}
