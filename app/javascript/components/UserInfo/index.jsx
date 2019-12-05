import React, { useRef } from 'react'
import { Query, Mutation } from 'react-apollo'
import { Me, SignMeIn } from './user-info.graphql'
import './user-info.scss'
import { makeStyles } from '@material-ui/core/styles'
import { TextField, Button } from '@material-ui/core'
import Typography from '@material-ui/core/Typography'

const useStyles = makeStyles(theme => ({
  button: {
    margin: theme.spacing(1),
    color: '#eeeeee',
  },
  input: {
    display: 'none',
  },
  textField: {
    marginLeft: theme.spacing(1),
    marginRight: theme.spacing(1),
    width: 200,
    height: '15px',
    padding: '0',
  },
}))

const UserInfo = () => {
  const input = useRef(null)
  const classes = useStyles()

  return (
    <div>
      <Query query={Me}>
        {({ data, loading }) => {
          if (loading) return '...Loading'
          if (!data.me) {
            return (
              <Mutation
                mutation={SignMeIn}
                update={(cache, { data: { signIn } }) => {
                  cache.writeQuery({
                    query: Me,
                    data: { me: signIn.user },
                  })
                }}
              >
                {(signIn, { loading: authenticating }) =>
                  authenticating ? (
                    '...'
                  ) : (
                      <div className="user-signin">
                        <form
                          onSubmit={event => {
                            event.preventDefault();
                            signIn({
                              variables: { email: input.current.value },
                            }).then(({ data: { signIn: { token } } }) => {
                              if (token) {
                                localStorage.setItem('mlToken', token)
                              }
                            });
                          }}
                        >
                          <TextField
                            inputRef={input}
                            type="email"
                            className={classes.textField}
                            placeholder="your email"
                            margin="dense"
                          />
                          <Button
                            variant="outlined"
                            className={classes.button}
                            type="submit">
                            Sign In
                          </Button>
                        </form>
                      </div>
                    )
                }
              </Mutation>
            );
          }

          const { fullName } = data.me
          return <Typography variant="h5">
                   Signed in as {fullName}
                 </Typography>
        }}
      </Query>
    </div>
  )
}

export default UserInfo