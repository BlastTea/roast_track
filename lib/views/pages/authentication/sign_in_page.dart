part of '../pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, stateAuthentication) {
          stateAuthentication as AuthenticationDataLoaded;

          if (kDebugMode) {
            // stateAuthentication.textControllerUsernameSignIn.text = 'Admin';
            // stateAuthentication.textControllerPasswordSignIn.text = 'Admin@123';

            // stateAuthentication.textControllerUsernameSignIn.text = 'Roastery';
            // stateAuthentication.textControllerPasswordSignIn.text = 'Roastery@123';
          }

          return Scaffold(
            body: AutofillGroup(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 70.0),
                    Center(
                      child: ImageContainer.hero(
                        tag: 'Home roastery fragment',
                        width: 150.0,
                        height: 150.0,
                        borderRadius: BorderRadius.circular(75.0),
                        image: const AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32.0),
                    TextField(
                      controller: stateAuthentication.textControllerUsernameSignIn,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                      autofillHints: const [AutofillHints.username],
                      readOnly: stateAuthentication.isSiningIn,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: stateAuthentication.textControllerPasswordSignIn,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () => MyApp.authenticationBloc.add(SetShowPasswordSignIn(value: !stateAuthentication.showPasswordSignIn)),
                          icon: Icon(stateAuthentication.showPasswordSignIn ? Icons.visibility_off : Icons.visibility),
                        ),
                      ),
                      obscureText: !stateAuthentication.showPasswordSignIn,
                      autofillHints: const [AutofillHints.password],
                      readOnly: stateAuthentication.isSiningIn,
                      onEditingComplete: () => MyApp.authenticationBloc.add(SignInPressed()),
                    ),
                    const SizedBox(height: 16.0),
                    FilledButton(
                      onPressed: stateAuthentication.isSiningIn ? null : () => MyApp.authenticationBloc.add(SignInPressed()),
                      child: stateAuthentication.isSiningIn
                          ? const SizedBox(
                              width: 24.0,
                              height: 24.0,
                              child: CircularProgressIndicator(),
                            )
                          : const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
