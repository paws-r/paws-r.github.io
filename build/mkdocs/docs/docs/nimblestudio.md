<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AmazonNimbleStudio

### Description

Welcome to the Amazon Nimble Studio API reference. This API reference
provides methods, schema, resources, parameters, and more to help you
get the most out of Nimble Studio.

Nimble Studio is a virtual studio that empowers visual effects,
animation, and interactive content teams to create content securely
within a scalable, private cloud service.

### Usage

    nimblestudio(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="nimblestudio_:_config">config</code></td>
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

    svc <- nimblestudio(
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
<td style="text-align: left;"><a href="../nimblestudio_accept_eulas/"> accept_eulas </a></td>
<td style="text-align: left;">Accept EULAs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_create_launch_profile/"> create_launch_profile </a></td>
<td style="text-align: left;">Create a launch profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_create_streaming_image/"> create_streaming_image </a></td>
<td style="text-align: left;">Creates a streaming image resource in a
studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_create_streaming_session/"> create_streaming_session </a></td>
<td style="text-align: left;">Creates a streaming session in a
studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_create_streaming_session_stream/"> create_streaming_session_stream </a></td>
<td style="text-align: left;">Creates a streaming session stream for a
streaming session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_create_studio/"> create_studio </a></td>
<td style="text-align: left;">Create a new studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_create_studio_component/"> create_studio_component </a></td>
<td style="text-align: left;">Creates a studio component resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_delete_launch_profile/"> delete_launch_profile </a></td>
<td style="text-align: left;">Permanently delete a launch profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_delete_launch_profile_member/"> delete_launch_profile_member </a></td>
<td style="text-align: left;">Delete a user from launch profile
membership</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_delete_streaming_image/"> delete_streaming_image </a></td>
<td style="text-align: left;">Delete streaming image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_delete_streaming_session/"> delete_streaming_session </a></td>
<td style="text-align: left;">Deletes streaming session resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_delete_studio/"> delete_studio </a></td>
<td style="text-align: left;">Delete a studio resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_delete_studio_component/"> delete_studio_component </a></td>
<td style="text-align: left;">Deletes a studio component resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_delete_studio_member/"> delete_studio_member </a></td>
<td style="text-align: left;">Delete a user from studio membership</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_eula/"> get_eula </a></td>
<td style="text-align: left;">Get EULA</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_launch_profile/"> get_launch_profile </a></td>
<td style="text-align: left;">Get a launch profile</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_launch_profile_details/"> get_launch_profile_details </a></td>
<td style="text-align: left;">Launch profile details include the launch
profile resource and summary information of resources that are used by,
or available to, the launch profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_launch_profile_initialization/"> get_launch_profile_initialization </a></td>
<td style="text-align: left;">Get a launch profile initialization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_launch_profile_member/"> get_launch_profile_member </a></td>
<td style="text-align: left;">Get a user persona in launch profile
membership</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_streaming_image/"> get_streaming_image </a></td>
<td style="text-align: left;">Get streaming image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_streaming_session/"> get_streaming_session </a></td>
<td style="text-align: left;">Gets StreamingSession resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_streaming_session_backup/"> get_streaming_session_backup </a></td>
<td style="text-align: left;">Gets StreamingSessionBackup resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_streaming_session_stream/"> get_streaming_session_stream </a></td>
<td style="text-align: left;">Gets a StreamingSessionStream for a
streaming session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_studio/"> get_studio </a></td>
<td style="text-align: left;">Get a studio resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_get_studio_component/"> get_studio_component </a></td>
<td style="text-align: left;">Gets a studio component resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_get_studio_member/"> get_studio_member </a></td>
<td style="text-align: left;">Get a user's membership in a studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_eula_acceptances/"> list_eula_acceptances </a></td>
<td style="text-align: left;">List EULA acceptances</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_list_eulas/"> list_eulas </a></td>
<td style="text-align: left;">List EULAs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_launch_profile_members/"> list_launch_profile_members </a></td>
<td style="text-align: left;">Get all users in a given launch profile
membership</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_list_launch_profiles/"> list_launch_profiles </a></td>
<td style="text-align: left;">List all the launch profiles a studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_streaming_images/"> list_streaming_images </a></td>
<td style="text-align: left;">List the streaming image resources
available to this studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_list_streaming_session_backups/"> list_streaming_session_backups </a></td>
<td style="text-align: left;">Lists the backups of a streaming session
in a studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_streaming_sessions/"> list_streaming_sessions </a></td>
<td style="text-align: left;">Lists the streaming sessions in a
studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_list_studio_components/"> list_studio_components </a></td>
<td style="text-align: left;">Lists the StudioComponents in a
studio</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_studio_members/"> list_studio_members </a></td>
<td style="text-align: left;">Get all users in a given studio
membership</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_list_studios/"> list_studios </a></td>
<td style="text-align: left;">List studios in your Amazon Web Services
accounts in the requested Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets the tags for a resource, given its
Amazon Resource Names (ARN)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_put_launch_profile_members/"> put_launch_profile_members </a></td>
<td style="text-align: left;">Add/update users with given persona to
launch profile membership</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_put_studio_members/"> put_studio_members </a></td>
<td style="text-align: left;">Add/update users with given persona to
studio membership</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_start_streaming_session/"> start_streaming_session </a></td>
<td style="text-align: left;">Transitions sessions from the STOPPED
state into the READY state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_start_studio_sso_configuration_repair/"> start_studio_sso_configuration_repair </a></td>
<td style="text-align: left;">Repairs the IAM Identity Center
configuration for a given studio</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_stop_streaming_session/"> stop_streaming_session </a></td>
<td style="text-align: left;">Transitions sessions from the READY state
into the STOPPED state</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Creates tags for a resource, given its
ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Deletes the tags for a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_update_launch_profile/"> update_launch_profile </a></td>
<td style="text-align: left;">Update a launch profile</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_update_launch_profile_member/"> update_launch_profile_member </a></td>
<td style="text-align: left;">Update a user persona in launch profile
membership</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_update_streaming_image/"> update_streaming_image </a></td>
<td style="text-align: left;">Update streaming image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../nimblestudio_update_studio/"> update_studio </a></td>
<td style="text-align: left;">Update a Studio resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../nimblestudio_update_studio_component/"> update_studio_component </a></td>
<td style="text-align: left;">Updates a studio component resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- nimblestudio()
    svc$accept_eulas(
      Foo = 123
    )

    ## End(Not run)
