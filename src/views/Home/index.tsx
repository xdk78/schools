import React from 'react'
import { Text, Button } from 'react-native'
import styled from 'styled-components/native'
import { HeaderProps } from 'react-navigation'

export default class Home extends React.Component<HeaderProps> {
  static navigationOptions = {
    title: 'Schools'
  }

  render() {
    return (
      <Wrapper>
        <Text>home content here</Text>
        <Button title="Go to About" onPress={() => this.props.navigation.navigate('About')} />
      </Wrapper>
    )
  }
}

const Wrapper = styled.View`
  flex: 1;
  align-items: center;
  justify-content: center;
`
