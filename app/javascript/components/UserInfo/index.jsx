import React, { useRef } from 'react'
import { Query, Mutation } from 'react-apollo'
import { Me, SignMeIn } from './user-info.graphql'
import './user-info.scss'
import { makeStyles } from '@material-ui/core/styles'
import Button from '@material-ui/core/Button'

const useStyles = makeStyles(theme => ({
  button: {
    margin: theme.spacing(1),
    color: '#eeeeee',
  },
  input: {
    display: 'none',
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
                          <input
                            ref={input}
                            type="email"
                            className="user-input"
                            placeholder="your email"
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
          return <div className="user-name">Signed in as {fullName}</div>
        }}
      </Query>
    </div>
  )
}

export default UserInfo