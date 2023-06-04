<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS License Manager User Subscriptions

### Description

With License Manager, you can create user-based subscriptions to utilize
licensed software with a per user subscription fee on Amazon EC2
instances.

### Usage

    licensemanagerusersubscriptions(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- licensemanagerusersubscriptions(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_associate_user/"> associate_user </a></td>
<td style="text-align: left;">Associates the user to an EC2 instance to
utilize user-based subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_deregister_identity_provider/"> deregister_identity_provider </a></td>
<td style="text-align: left;">Deregisters the identity provider from
providing user-based subscriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_disassociate_user/"> disassociate_user </a></td>
<td style="text-align: left;">Disassociates the user from an EC2
instance providing user-based subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_list_identity_providers/"> list_identity_providers </a></td>
<td style="text-align: left;">Lists the identity providers for
user-based subscriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_list_instances/"> list_instances </a></td>
<td style="text-align: left;">Lists the EC2 instances providing
user-based subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_list_product_subscriptions/"> list_product_subscriptions </a></td>
<td style="text-align: left;">Lists the user-based subscription products
available from an identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_list_user_associations/"> list_user_associations </a></td>
<td style="text-align: left;">Lists user associations for an identity
provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_register_identity_provider/"> register_identity_provider </a></td>
<td style="text-align: left;">Registers an identity provider for
user-based subscriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_start_product_subscription/"> start_product_subscription </a></td>
<td style="text-align: left;">Starts a product subscription for a user
with the specified identity provider</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_stop_product_subscription/"> stop_product_subscription </a></td>
<td style="text-align: left;">Stops a product subscription for a user
with the specified identity provider</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../licensemanagerusersubscriptions_update_identity_provider_settings/"> update_identity_provider_settings </a></td>
<td style="text-align: left;">Updates additional product configuration
settings for the registered identity provider</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- licensemanagerusersubscriptions()
    svc$associate_user(
      Foo = 123
    )

    ## End(Not run)
