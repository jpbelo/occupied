import React from 'react'
import 'jest-styled-components'

import { renderWithTheme } from 'helpers/renderWithTheme'
import TagButton from './TagButton'

const mockProps = {
  name: 'Google',
  url: 'http://google.com',
}
const mockPropsNoUrl = {
  name: 'Google',
}

test('Render as Button', () => {
  let tree = renderWithTheme(<TagButton {...mockProps} />).toJSON()
  expect(tree).toMatchSnapshot()
})

test('Render as Button without url', () => {
  let tree = renderWithTheme(<TagButton {...mockPropsNoUrl} />).toJSON()
  expect(tree).toMatchSnapshot()
})

test('Render as Text', () => {
  let tree = renderWithTheme(
    <TagButton {...mockProps} modifiers="asText" />,
  ).toJSON()
  expect(tree).toMatchSnapshot()
})

test('Render as Text without url', () => {
  let tree = renderWithTheme(
    <TagButton {...mockPropsNoUrl} modifiers="asText" />,
  ).toJSON()
  expect(tree).toMatchSnapshot()
})
