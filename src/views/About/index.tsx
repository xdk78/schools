import React from 'react'
import { Text, Button } from 'react-native'
import styled from 'styled-components/native'
import { HeaderProps } from 'react-navigation'

export default class About extends React.Component<HeaderProps> {
  static navigationOptions = {
    title: 'About'
  }

  render() {
    return (
      <Wrapper>
        <Text>about content here</Text>
        <Button title="Go to Home" onPress={() => this.props.navigation.navigate('Home')} />
      </Wrapper>
    )
  }
}

const Wrapper = styled.View`
  flex: 1;
  align-items: center;
  justify-content: center;
`
