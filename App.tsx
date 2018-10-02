import React from 'react'
import Home from './src/views/Home'
import styled from 'styled-components/native'
import { createStackNavigator } from 'react-navigation'
import About from './src/views/About'

export default class App extends React.Component {
  render() {
    return (
      <Wrapper>
        <RootStack />
      </Wrapper>
    )
  }
}

const RootStack = createStackNavigator(
  {
    Home,
    About
  },
  {
    initialRouteName: 'Home'
  }
)

const Wrapper = styled.View`
  flex: 1;
  height: 100%;
  background-color: #eee;
  justify-content: center;
`
