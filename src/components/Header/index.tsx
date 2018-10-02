import React from 'react'
import { Constants } from 'expo'
import styled from 'styled-components/native'
import { StatusBar } from 'react-native'

interface IProps {
  readonly title: string
}

const Header = (props: IProps) => {
  return (
    <Wrapper>
      <StatusBar backgroundColor="#fff" barStyle="dark-content" />
      <TitleText>{props.title}</TitleText>
    </Wrapper>
  )
}

const Wrapper = styled.View`
  flex: 1;
  background-color: #fff;
  align-items: center;
  padding-top: ${Constants.statusBarHeight};
  elevation: 4;
`

const TitleText = styled.Text`
  color: #000;
  font-size: 24;
`

export default Header
