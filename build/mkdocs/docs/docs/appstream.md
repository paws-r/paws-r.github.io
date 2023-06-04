<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon AppStream

### Description

Amazon AppStream 2.0

This is the *Amazon AppStream 2.0 API Reference*. This documentation
provides descriptions and syntax for each of the actions and data types
in AppStream 2.0. AppStream 2.0 is a fully managed, secure application
streaming service that lets you stream desktop applications to users
without rewriting applications. AppStream 2.0 manages the AWS resources
that are required to host and run your applications, scales
automatically, and provides access to your users on demand.

You can call the AppStream 2.0 API operations by using an interface VPC
endpoint (interface endpoint). For more information, see [Access
AppStream 2.0 API Operations and CLI Commands Through an Interface VPC
Endpoint](https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html)
in the *Amazon AppStream 2.0 Administration Guide*.

To learn more about AppStream 2.0, see the following resources:

-   [Amazon AppStream 2.0 product
    page](https://aws.amazon.com/appstream2/)

-   [Amazon AppStream 2.0
    documentation](https://docs.aws.amazon.com/appstream2/index.html)

### Usage

    appstream(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="appstream_:_config">config</code></td>
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

    svc <- appstream(
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
<td style="text-align: left;"><a href="../appstream_associate_application_fleet/"> associate_application_fleet </a></td>
<td style="text-align: left;">Associates the specified application with
the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_associate_application_to_entitlement/"> associate_application_to_entitlement </a></td>
<td style="text-align: left;">Associates an application to entitle</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_associate_fleet/"> associate_fleet </a></td>
<td style="text-align: left;">Associates the specified fleet with the
specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_batch_associate_user_stack/"> batch_associate_user_stack </a></td>
<td style="text-align: left;">Associates the specified users with the
specified stacks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_batch_disassociate_user_stack/"> batch_disassociate_user_stack </a></td>
<td style="text-align: left;">Disassociates the specified users from the
specified stacks</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_copy_image/"> copy_image </a></td>
<td style="text-align: left;">Copies the image within the same region or
to a new region within the same AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_app_block/"> create_app_block </a></td>
<td style="text-align: left;">Creates an app block</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_application/"> create_application </a></td>
<td style="text-align: left;">Creates an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_directory_config/"> create_directory_config </a></td>
<td style="text-align: left;">Creates a Directory Config object in
AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_entitlement/"> create_entitlement </a></td>
<td style="text-align: left;">Creates a new entitlement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_fleet/"> create_fleet </a></td>
<td style="text-align: left;">Creates a fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_image_builder/"> create_image_builder </a></td>
<td style="text-align: left;">Creates an image builder</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_image_builder_streaming_url/"> create_image_builder_streaming_url </a></td>
<td style="text-align: left;">Creates a URL to start an image builder
streaming session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_stack/"> create_stack </a></td>
<td style="text-align: left;">Creates a stack to start streaming
applications to users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_streaming_url/"> create_streaming_url </a></td>
<td style="text-align: left;">Creates a temporary URL to start an
AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_updated_image/"> create_updated_image </a></td>
<td style="text-align: left;">Creates a new image with the latest
Windows operating system updates, driver updates, and AppStream 2</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_create_usage_report_subscription/"> create_usage_report_subscription </a></td>
<td style="text-align: left;">Creates a usage report subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a new user in the user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_app_block/"> delete_app_block </a></td>
<td style="text-align: left;">Deletes an app block</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_delete_application/"> delete_application </a></td>
<td style="text-align: left;">Deletes an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_directory_config/"> delete_directory_config </a></td>
<td style="text-align: left;">Deletes the specified Directory Config
object from AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_delete_entitlement/"> delete_entitlement </a></td>
<td style="text-align: left;">Deletes the specified entitlement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_fleet/"> delete_fleet </a></td>
<td style="text-align: left;">Deletes the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_delete_image/"> delete_image </a></td>
<td style="text-align: left;">Deletes the specified image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_image_builder/"> delete_image_builder </a></td>
<td style="text-align: left;">Deletes the specified image builder and
releases the capacity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_delete_image_permissions/"> delete_image_permissions </a></td>
<td style="text-align: left;">Deletes permissions for the specified
private image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_stack/"> delete_stack </a></td>
<td style="text-align: left;">Deletes the specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_delete_usage_report_subscription/"> delete_usage_report_subscription </a></td>
<td style="text-align: left;">Disables usage report generation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes a user from the user pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_app_blocks/"> describe_app_blocks </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more app blocks</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../appstream_describe_application_fleet_associations/"> describe_application_fleet_associations </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more application fleet associations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_applications/"> describe_applications </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_directory_configs/"> describe_directory_configs </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified Directory Config objects for AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_entitlements/"> describe_entitlements </a></td>
<td style="text-align: left;">Retrieves a list that describes one of
more entitlements</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_fleets/"> describe_fleets </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified fleets, if the fleet names are provided</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_image_builders/"> describe_image_builders </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified image builders, if the image builder names are
provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_image_permissions/"> describe_image_permissions </a></td>
<td style="text-align: left;">Retrieves a list that describes the
permissions for shared AWS account IDs on a private image that you
own</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_images/"> describe_images </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified images, if the image names or image ARNs are
provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_sessions/"> describe_sessions </a></td>
<td style="text-align: left;">Retrieves a list that describes the
streaming sessions for a specified stack and fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_stacks/"> describe_stacks </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified stacks, if the stack names are provided</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_usage_report_subscriptions/"> describe_usage_report_subscriptions </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more usage report subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_describe_users/"> describe_users </a></td>
<td style="text-align: left;">Retrieves a list that describes one or
more specified users in the user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_describe_user_stack_associations/"> describe_user_stack_associations </a></td>
<td style="text-align: left;">Retrieves a list that describes the
UserStackAssociation objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_disable_user/"> disable_user </a></td>
<td style="text-align: left;">Disables the specified user in the user
pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_disassociate_application_fleet/"> disassociate_application_fleet </a></td>
<td style="text-align: left;">Disassociates the specified application
from the fleet</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../appstream_disassociate_application_from_entitlement/"> disassociate_application_from_entitlement </a></td>
<td style="text-align: left;">Deletes the specified application from the
specified entitlement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_disassociate_fleet/"> disassociate_fleet </a></td>
<td style="text-align: left;">Disassociates the specified fleet from the
specified stack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_enable_user/"> enable_user </a></td>
<td style="text-align: left;">Enables a user in the user pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_expire_session/"> expire_session </a></td>
<td style="text-align: left;">Immediately stops the specified streaming
session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_list_associated_fleets/"> list_associated_fleets </a></td>
<td style="text-align: left;">Retrieves the name of the fleet that is
associated with the specified stack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_list_associated_stacks/"> list_associated_stacks </a></td>
<td style="text-align: left;">Retrieves the name of the stack with which
the specified fleet is associated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_list_entitled_applications/"> list_entitled_applications </a></td>
<td style="text-align: left;">Retrieves a list of entitled
applications</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves a list of all tags for the
specified AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_start_fleet/"> start_fleet </a></td>
<td style="text-align: left;">Starts the specified fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_start_image_builder/"> start_image_builder </a></td>
<td style="text-align: left;">Starts the specified image builder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_stop_fleet/"> stop_fleet </a></td>
<td style="text-align: left;">Stops the specified fleet</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_stop_image_builder/"> stop_image_builder </a></td>
<td style="text-align: left;">Stops the specified image builder</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites one or more tags for
the specified AppStream 2</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Disassociates one or more specified tags
from the specified AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_update_application/"> update_application </a></td>
<td style="text-align: left;">Updates the specified application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_update_directory_config/"> update_directory_config </a></td>
<td style="text-align: left;">Updates the specified Directory Config
object in AppStream 2</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_update_entitlement/"> update_entitlement </a></td>
<td style="text-align: left;">Updates the specified entitlement</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_update_fleet/"> update_fleet </a></td>
<td style="text-align: left;">Updates the specified fleet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../appstream_update_image_permissions/"> update_image_permissions </a></td>
<td style="text-align: left;">Adds or updates permissions for the
specified private image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../appstream_update_stack/"> update_stack </a></td>
<td style="text-align: left;">Updates the specified fields for the
specified stack</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- appstream()
    svc$associate_application_fleet(
      Foo = 123
    )

    ## End(Not run)
