import React from 'react'
import styled from 'styled-components/native'
import { HeaderProps } from 'react-navigation'

export default class Login extends React.Component<HeaderProps> {
  static navigationOptions = {
    title: 'Logowanie'
  }

  render() {
    return (
      <Wrapper>
        <Header>Konto Librus</Header>
        <Card>
          <Input placeholder="Login/E-Mail" />
          <Input placeholder="Hasło" textContentType="password" secureTextEntry />
        </Card>
        <LoginButton underlayColor="#eee" onPress={() => this.props.navigation.navigate('Home')}>
          <LoginLabel>ZALOGUJ SIĘ</LoginLabel>
        </LoginButton>
      </Wrapper>
    )
  }
}

const Wrapper = styled.View`
  flex: 1;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding-right: 24;
  padding-left: 24;
`

const LoginButton = styled.TouchableHighlight`
  background-color: #0186D4;
  height: 48;
  width: 100%;
  elevation: 2;
  border-radius: 8;
  padding-right: 8;
  padding-left: 8;
  align-items: center;
  justify-content: center;
`

const LoginLabel = styled.Text`
  font-size: 18;
  color: #fff;
`

const Card = styled.KeyboardAvoidingView`
  background-color: #fff;
  width: 100%;
  height: 128;
  elevation: 2;
  border-radius: 8;
  padding-top: 8;
  padding-right: 8;
  padding-left: 8;
  margin-bottom: 12;
`

const Input = styled.TextInput`
  width: 100%;
  font-size: 16;
  height: 48;
  padding-right: 4;
  padding-left: 4;
`

const Header = styled.Text`
  font-size: 24;
  margin-bottom: 24;
`
