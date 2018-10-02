import React from 'react'
import { Text } from 'react-native'
import Header from './src/components/Header'
import styled from 'styled-components/native'
import { Constants } from 'expo'

export default class App extends React.Component {
  render() {
    return (
      <Wrapper>
        <HeaderWrapper>
          <Header title="Schools" />
        </HeaderWrapper>
        <ContentWrapper>
          <Text>content here</Text>
        </ContentWrapper>
      </Wrapper>
    )
  }
}

const Wrapper = styled.View`
  flex: 1;
  height: 100%;
  background-color: #eee;
  justify-content: center;
`

const HeaderWrapper = styled.View`
  height: ${Constants.statusBarHeight + 48};
`

const ContentWrapper = styled.View`
  flex: 6;
  align-items: center;
  justify-content: center;
`
