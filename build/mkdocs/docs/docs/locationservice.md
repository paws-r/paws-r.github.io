<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Location Service

### Description

"Suite of geospatial services including Maps, Places, Routes, Tracking,
and Geofencing"

### Usage

    locationservice(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="locationservice_:_config">config</code></td>
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

    svc <- locationservice(
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
<td style="text-align: left;"><a href="../locationservice_associate_tracker_consumer/"> associate_tracker_consumer </a></td>
<td style="text-align: left;">Creates an association between a geofence
collection and a tracker resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_batch_delete_device_position_history/"> batch_delete_device_position_history </a></td>
<td style="text-align: left;">Deletes the position history of one or
more devices from a tracker resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_batch_delete_geofence/"> batch_delete_geofence </a></td>
<td style="text-align: left;">Deletes a batch of geofences from a
geofence collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_batch_evaluate_geofences/"> batch_evaluate_geofences </a></td>
<td style="text-align: left;">Evaluates device positions against the
geofence geometries from a given geofence collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_batch_get_device_position/"> batch_get_device_position </a></td>
<td style="text-align: left;">Lists the latest device positions for
requested devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_batch_put_geofence/"> batch_put_geofence </a></td>
<td style="text-align: left;">A batch request for storing geofence
geometries into a given geofence collection, or updates the geometry of
an existing geofence if a geofence ID is included in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_batch_update_device_position/"> batch_update_device_position </a></td>
<td style="text-align: left;">Uploads position update data for one or
more devices to a tracker resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_calculate_route/"> calculate_route </a></td>
<td style="text-align: left;">Calculates a route given the following
required parameters: DeparturePosition and DestinationPosition</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_calculate_route_matrix/"> calculate_route_matrix </a></td>
<td style="text-align: left;">Calculates a route matrix given the
following required parameters: DeparturePositions and
DestinationPositions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_create_geofence_collection/"> create_geofence_collection </a></td>
<td style="text-align: left;">Creates a geofence collection, which
manages and stores geofences</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_create_key/"> create_key </a></td>
<td style="text-align: left;">Creates an API key resource in your Amazon
Web Services account, which lets you grant geo:GetMap* actions for
Amazon Location Map resources to the API key bearer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_create_map/"> create_map </a></td>
<td style="text-align: left;">Creates a map resource in your Amazon Web
Services account, which provides map tiles of different styles sourced
from global location data providers</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_create_place_index/"> create_place_index </a></td>
<td style="text-align: left;">Creates a place index resource in your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_create_route_calculator/"> create_route_calculator </a></td>
<td style="text-align: left;">Creates a route calculator resource in
your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_create_tracker/"> create_tracker </a></td>
<td style="text-align: left;">Creates a tracker resource in your Amazon
Web Services account, which lets you retrieve current and historical
location of devices</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_delete_geofence_collection/"> delete_geofence_collection </a></td>
<td style="text-align: left;">Deletes a geofence collection from your
Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_delete_key/"> delete_key </a></td>
<td style="text-align: left;">Deletes the specified API key</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_delete_map/"> delete_map </a></td>
<td style="text-align: left;">Deletes a map resource from your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_delete_place_index/"> delete_place_index </a></td>
<td style="text-align: left;">Deletes a place index resource from your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_delete_route_calculator/"> delete_route_calculator </a></td>
<td style="text-align: left;">Deletes a route calculator resource from
your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_delete_tracker/"> delete_tracker </a></td>
<td style="text-align: left;">Deletes a tracker resource from your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_describe_geofence_collection/"> describe_geofence_collection </a></td>
<td style="text-align: left;">Retrieves the geofence collection
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_describe_key/"> describe_key </a></td>
<td style="text-align: left;">Retrieves the API key resource
details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_describe_map/"> describe_map </a></td>
<td style="text-align: left;">Retrieves the map resource details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_describe_place_index/"> describe_place_index </a></td>
<td style="text-align: left;">Retrieves the place index resource
details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_describe_route_calculator/"> describe_route_calculator </a></td>
<td style="text-align: left;">Retrieves the route calculator resource
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_describe_tracker/"> describe_tracker </a></td>
<td style="text-align: left;">Retrieves the tracker resource
details</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_disassociate_tracker_consumer/"> disassociate_tracker_consumer </a></td>
<td style="text-align: left;">Removes the association between a tracker
resource and a geofence collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_get_device_position/"> get_device_position </a></td>
<td style="text-align: left;">Retrieves a device's most recent position
according to its sample time</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_get_device_position_history/"> get_device_position_history </a></td>
<td style="text-align: left;">Retrieves the device position history from
a tracker resource within a specified range of time</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_get_geofence/"> get_geofence </a></td>
<td style="text-align: left;">Retrieves the geofence details from a
geofence collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_get_map_glyphs/"> get_map_glyphs </a></td>
<td style="text-align: left;">Retrieves glyphs used to display labels on
a map</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_get_map_sprites/"> get_map_sprites </a></td>
<td style="text-align: left;">Retrieves the sprite sheet corresponding
to a map resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_get_map_style_descriptor/"> get_map_style_descriptor </a></td>
<td style="text-align: left;">Retrieves the map style descriptor from a
map resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_get_map_tile/"> get_map_tile </a></td>
<td style="text-align: left;">Retrieves a vector data tile from the map
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_get_place/"> get_place </a></td>
<td style="text-align: left;">Finds a place by its unique ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_list_device_positions/"> list_device_positions </a></td>
<td style="text-align: left;">A batch request to retrieve all device
positions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_list_geofence_collections/"> list_geofence_collections </a></td>
<td style="text-align: left;">Lists geofence collections in your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_list_geofences/"> list_geofences </a></td>
<td style="text-align: left;">Lists geofences stored in a given geofence
collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_list_keys/"> list_keys </a></td>
<td style="text-align: left;">Lists API key resources in your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_list_maps/"> list_maps </a></td>
<td style="text-align: left;">Lists map resources in your Amazon Web
Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_list_place_indexes/"> list_place_indexes </a></td>
<td style="text-align: left;">Lists place index resources in your Amazon
Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_list_route_calculators/"> list_route_calculators </a></td>
<td style="text-align: left;">Lists route calculator resources in your
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags that are applied to
the specified Amazon Location resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_list_tracker_consumers/"> list_tracker_consumers </a></td>
<td style="text-align: left;">Lists geofence collections currently
associated to the given tracker resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_list_trackers/"> list_trackers </a></td>
<td style="text-align: left;">Lists tracker resources in your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_put_geofence/"> put_geofence </a></td>
<td style="text-align: left;">Stores a geofence geometry in a given
geofence collection, or updates the geometry of an existing geofence if
a geofence ID is included in the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_search_place_index_for_position/"> search_place_index_for_position </a></td>
<td style="text-align: left;">Reverse geocodes a given coordinate and
returns a legible address</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_search_place_index_for_suggestions/"> search_place_index_for_suggestions </a></td>
<td style="text-align: left;">Generates suggestions for addresses and
points of interest based on partial or misspelled free-form text</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_search_place_index_for_text/"> search_place_index_for_text </a></td>
<td style="text-align: left;">Geocodes free-form text, such as an
address, name, city, or region to allow you to search for Places or
points of interest</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Assigns one or more tags (key-value pairs)
to the specified Amazon Location Service resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from the
specified Amazon Location resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_update_geofence_collection/"> update_geofence_collection </a></td>
<td style="text-align: left;">Updates the specified properties of a
given geofence collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_update_key/"> update_key </a></td>
<td style="text-align: left;">Updates the specified properties of a
given API key resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_update_map/"> update_map </a></td>
<td style="text-align: left;">Updates the specified properties of a
given map resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_update_place_index/"> update_place_index </a></td>
<td style="text-align: left;">Updates the specified properties of a
given place index resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../locationservice_update_route_calculator/"> update_route_calculator </a></td>
<td style="text-align: left;">Updates the specified properties for a
given route calculator resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../locationservice_update_tracker/"> update_tracker </a></td>
<td style="text-align: left;">Updates the specified properties of a
given tracker resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- locationservice()
    svc$associate_tracker_consumer(
      Foo = 123
    )

    ## End(Not run)
