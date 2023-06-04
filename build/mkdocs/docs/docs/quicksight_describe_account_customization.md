<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_account_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the customizations associated with the provided Amazon Web Services account and Amazon Amazon QuickSight namespace in an Amazon Web Services Region

### Description

Describes the customizations associated with the provided Amazon Web
Services account and Amazon Amazon QuickSight namespace in an Amazon Web
Services Region. The Amazon QuickSight console evaluates which
customizations to apply by running this API operation with the
`Resolved` flag included.

To determine what customizations display when you run this command, it
can help to visualize the relationship of the entities involved.

-   `⁠Amazon Web Services account⁠` - The Amazon Web Services account
    exists at the top of the hierarchy. It has the potential to use all
    of the Amazon Web Services Regions and Amazon Web Services Services.
    When you subscribe to Amazon QuickSight, you choose one Amazon Web
    Services Region to use as your home Region. That's where your free
    SPICE capacity is located. You can use Amazon QuickSight in any
    supported Amazon Web Services Region.

-   `⁠Amazon Web Services Region⁠` - In each Amazon Web Services Region
    where you sign in to Amazon QuickSight at least once, Amazon
    QuickSight acts as a separate instance of the same service. If you
    have a user directory, it resides in us-east-1, which is the US East
    (N. Virginia). Generally speaking, these users have access to Amazon
    QuickSight in any Amazon Web Services Region, unless they are
    constrained to a namespace.

    To run the command in a different Amazon Web Services Region, you
    change your Region settings. If you're using the CLI, you can use
    one of the following options:

    -   Use [command line
        options](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html).

    -   Use named profiles.

    -   Run `⁠aws configure⁠` to change your default Amazon Web Services
        Region. Use Enter to key the same settings for your keys. For
        more information, see [Configuring the
        CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

-   `Namespace` - A QuickSight namespace is a partition that contains
    users and assets (data sources, datasets, dashboards, and so on). To
    access assets that are in a specific namespace, users and groups
    must also be part of the same namespace. People who share a
    namespace are completely isolated from users and assets in other
    namespaces, even if they are in the same Amazon Web Services account
    and Amazon Web Services Region.

-   `⁠Applied customizations⁠` - Within an Amazon Web Services Region, a
    set of Amazon QuickSight customizations can apply to an Amazon Web
    Services account or to a namespace. Settings that you apply to a
    namespace override settings that you apply to an Amazon Web Services
    account. All settings are isolated to a single Amazon Web Services
    Region. To apply them in other Amazon Web Services Regions, run the
    `create_account_customization` command in each Amazon Web Services
    Region where you want to apply the same customizations.

### Usage

    quicksight_describe_account_customization(AwsAccountId, Namespace,
      Resolved)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_account_customization_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to describe Amazon QuickSight customizations for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_account_customization_:_Namespace">Namespace</code></td>
<td><p>The Amazon QuickSight namespace that you want to describe Amazon
QuickSight customizations for.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_account_customization_:_Resolved">Resolved</code></td>
<td><p>The <code>Resolved</code> flag works with the other parameters to
determine which view of Amazon QuickSight customizations is returned.
You can add this flag to your command to use the same view that Amazon
QuickSight uses to identify which customizations to apply to the
console. Omit this flag, or set it to <code>no-resolved</code>, to
reveal customizations that are configured at different levels.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AwsAccountId = "string",
      Namespace = "string",
      AccountCustomization = list(
        DefaultTheme = "string",
        DefaultEmailCustomizationTemplate = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_account_customization(
      AwsAccountId = "string",
      Namespace = "string",
      Resolved = TRUE|FALSE
    )
