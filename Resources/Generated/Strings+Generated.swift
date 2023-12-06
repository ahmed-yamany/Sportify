// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Login {
    /// Forgot password?
    internal static let forgotPassword = L10n.tr("Localizable", "Login.forgotPassword", fallback: "Forgot password?")
    /// Your Sportify account is now Sportify ID. If you’ve signed into the app before, use the same credentials here. otherwise
    internal static let instructions = L10n.tr("Localizable", "Login.instructions", fallback: "Your Sportify account is now Sportify ID. If you’ve signed into the app before, use the same credentials here. otherwise")
    /// or
    internal static let or = L10n.tr("Localizable", "Login.or", fallback: "or")
    /// Login
    internal static let title = L10n.tr("Localizable", "Login.title", fallback: "Login")
    internal enum Header {
      /// Sign in
      internal static let overlayTitle = L10n.tr("Localizable", "Login.header.overlayTitle", fallback: "Sign in")
      /// 
      internal static let subtitle = L10n.tr("Localizable", "Login.header.subtitle", fallback: "")
      /// sIGN IN WITH YOUR SPORTIFY ID
      internal static let title = L10n.tr("Localizable", "Login.header.title", fallback: "sIGN IN WITH YOUR SPORTIFY ID")
    }
    internal enum Textfield {
      /// Email
      internal static let email = L10n.tr("Localizable", "Login.textfield.email", fallback: "Email")
      /// Password
      internal static let password = L10n.tr("Localizable", "Login.textfield.password", fallback: "Password")
    }
  }
  internal enum App {
    /// Localizable.strings
    ///   Sportify
    /// 
    ///   Created by Ahmed Yamany on 05/12/2023.
    internal static let name = L10n.tr("Localizable", "app.name", fallback: "sportify")
  }
  internal enum Signup {
    /// Create Account
    internal static let title = L10n.tr("Localizable", "signup.title", fallback: "Create Account")
    internal enum Header {
      /// Join
      internal static let overlayTitle = L10n.tr("Localizable", "signup.header.overlayTitle", fallback: "Join")
      /// Get news,game updates highlights and more info on your favorite teams
      internal static let subtitle = L10n.tr("Localizable", "signup.header.subtitle", fallback: "Get news,game updates highlights and more info on your favorite teams")
      /// Create your sportify id
      internal static let title = L10n.tr("Localizable", "signup.header.title", fallback: "Create your sportify id")
    }
    internal enum Terms {
      /// By agreeing to the above terms, you are consenting that your personal information will be collected, stored, and processed in the United States and the European Union on behalf of Sporify Properties, Inc.
      internal static let instructions = L10n.tr("Localizable", "signup.terms.instructions", fallback: "By agreeing to the above terms, you are consenting that your personal information will be collected, stored, and processed in the United States and the European Union on behalf of Sporify Properties, Inc.")
      /// Privacy Policy
      internal static let privacy = L10n.tr("Localizable", "signup.terms.privacy", fallback: "Privacy Policy")
      /// Terms
      internal static let terms = L10n.tr("Localizable", "signup.terms.terms", fallback: "Terms")
      /// I agree to the
      internal static let text = L10n.tr("Localizable", "signup.terms.text", fallback: "I agree to the")
    }
    internal enum Textfield {
      /// Email
      internal static let email = L10n.tr("Localizable", "signup.textfield.email", fallback: "Email")
      /// First Name
      internal static let firstname = L10n.tr("Localizable", "signup.textfield.firstname", fallback: "First Name")
      /// Last Name
      internal static let lastname = L10n.tr("Localizable", "signup.textfield.lastname", fallback: "Last Name")
      /// Password
      internal static let password = L10n.tr("Localizable", "signup.textfield.password", fallback: "Password")
      internal enum Password {
        /// Password must be at least 8 character long and include 1 capital letter and 1 symbol
        internal static let instructions = L10n.tr("Localizable", "signup.textfield.password.instructions", fallback: "Password must be at least 8 character long and include 1 capital letter and 1 symbol")
      }
    }
  }
  internal enum Splash {
    /// Watch sports live or highlights, read every news from your smartphone
    internal static let subtitle = L10n.tr("Localizable", "splash.subtitle", fallback: "Watch sports live or highlights, read every news from your smartphone")
    /// keep an eye on the stadium
    internal static let title = L10n.tr("Localizable", "splash.title", fallback: "keep an eye on the stadium")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
