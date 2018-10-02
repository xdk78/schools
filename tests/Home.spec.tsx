import React from 'react'
import Home from '../src/views/Home'
import renderer from 'react-test-renderer'

describe('Home', () => {
  it('renders without crashing', () => {
    const rendered = renderer
      .create(
        // @ts-ignore
        <Home />
      )
      .toJSON()
    expect(rendered).toBeTruthy()
  })
})
