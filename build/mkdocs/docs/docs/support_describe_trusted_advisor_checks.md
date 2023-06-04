<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_describe_trusted_advisor_checks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all available Trusted Advisor checks, including the name, ID, category, description, and metadata

### Description

Returns information about all available Trusted Advisor checks,
including the name, ID, category, description, and metadata. You must
specify a language code.

The response contains a TrustedAdvisorCheckDescription object for each
check. You must set the Amazon Web Services Region to us-east-1.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

-   The names and descriptions for Trusted Advisor checks are subject to
    change. We recommend that you specify the check ID in your code to
    uniquely identify a check.

To call the Trusted Advisor operations in the Amazon Web Services
Support API, you must use the US East (N. Virginia) endpoint. Currently,
the US West (Oregon) and Europe (Ireland) endpoints don't support the
Trusted Advisor operations. For more information, see [About the Amazon
Web Services Support
API](https://docs.aws.amazon.com/awssupport/latest/user/about-support-api.html#endpoint)
in the *Amazon Web Services Support User Guide*.

### Usage

    support_describe_trusted_advisor_checks(language)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_describe_trusted_advisor_checks_:_language">language</code></td>
<td><p>[required] The ISO 639-1 code for the language that you want your
checks to appear in.</p>
<p>The Amazon Web Services Support API currently supports the following
languages for Trusted Advisor:</p>
<ul>
<li><p>Chinese, Simplified - <code>zh</code></p></li>
<li><p>Chinese, Traditional - <code>zh_TW</code></p></li>
<li><p>English - <code>en</code></p></li>
<li><p>French - <code>fr</code></p></li>
<li><p>German - <code>de</code></p></li>
<li><p>Indonesian - <code>id</code></p></li>
<li><p>Italian - <code>it</code></p></li>
<li><p>Japanese - <code>ja</code></p></li>
<li><p>Korean - <code>ko</code></p></li>
<li><p>Portuguese, Brazilian - <code>pt_BR</code></p></li>
<li><p>Spanish - <code>es</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      checks = list(
        list(
          id = "string",
          name = "string",
          description = "string",
          category = "string",
          metadata = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_trusted_advisor_checks(
      language = "string"
    )
