<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_publisher</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a CloudFormation extension publisher

### Description

Returns information about a CloudFormation extension publisher.

If you don't supply a `PublisherId`, and you have registered as an
extension publisher, `describe_publisher` returns information about your
own publisher account.

For more information about registering as a publisher, see:

-   `register_publisher`

-   [Publishing extensions to make them available for public
    use](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
    in the *CloudFormation CLI User Guide*

### Usage

    cloudformation_describe_publisher(PublisherId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_publisher_:_PublisherId">PublisherId</code></td>
<td><p>The ID of the extension publisher.</p>
<p>If you don't supply a <code>PublisherId</code>, and you have
registered as an extension publisher, <code>describe_publisher</code>
returns information about your own publisher account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublisherId = "string",
      PublisherStatus = "VERIFIED"|"UNVERIFIED",
      IdentityProvider = "AWS_Marketplace"|"GitHub"|"Bitbucket",
      PublisherProfile = "string"
    )

### Request syntax

    svc$describe_publisher(
      PublisherId = "string"
    )
