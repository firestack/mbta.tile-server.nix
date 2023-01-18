/* ****************************************************************** */
/* OSM SMARTRAK for Imposm                                            */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Ubuntu Regular","Arial Regular","DejaVu Sans Book";
@sans_lt_italic:    "Ubuntu Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Ubuntu Regular","Arial Regular","DejaVu Sans Book";
@sans_italic:       "Ubuntu Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Ubuntu Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Ubuntu Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@background_grey:   #f4f4f5;

@greenspace:        #b1deaf;
@waterway_label:    #2c45c6;

@land:              @background_grey;
@land_low:          @background_grey;
@water:             #b6bee7;
@grass:             @greenspace;
@beach:             #ffeec7;
@park:              @greenspace;
@cemetery:          @greenspace;
@wooded:            @greenspace;
@agriculture:       #f2e8b6;

@building:          @background_grey;
@building_line:     #dbdde1;
@building_case:     #d3d1c8;
@hospital:          #ebe3da;
@school:            @background_grey;
@sports:            @greenspace;

@residential:       @background_grey;
@commercial:        @background_grey;
@industrial:        @background_grey;
@parking:           #e5e4df;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #ffe1c6;
@motorway_fill:     @motorway_line;
@motorway_case:     #efc59e;

@trunk_line:        @motorway_line;
@trunk_fill:        @motorway_fill;
@trunk_case:        @motorway_case;

@primary_line:      #fcf8d8;
@primary_fill:      @primary_line;
@primary_case:      #e4daaf;

@minor_road_line:   #ffffff;
@minor_road_fill:   #ffffff;
@minor_road_case:   #e9e9e9;

@secondary_line:    @minor_road_line;
@secondary_fill:    @minor_road_fill;
@secondary_case:    @minor_road_case;

@standard_line:     @minor_road_line;
@standard_fill:     @minor_road_fill;
@standard_case:     @minor_road_case;

@service_line:      @minor_road_line;
@service_fill:      @minor_road_fill;
@service_case:      @minor_road_case;

@pedestrian_line:   @minor_road_line;
@pedestrian_fill:   @minor_road_fill;
@standard_case:     @minor_road_case;
@pedestrian_case:   @minor_road_case;


@cycle_line:        @standard_line;
@cycle_fill:        @minor_road_fill;
@cycle_case:        @land;

@rail_line:         #dad9d9;
@rail_fill:         #dad9d9;
@rail_case:         @minor_road_case;

@aeroway:           #ddd;

@ferry_line:        darken(@water, 20);

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #7a98b7;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@halo_white:        @place_halo;
@greenspace_halo:   @halo_white;

@country_text:      #222;
@country_halo:      @place_halo;

@state_text:        #333;
@state_halo:        @place_halo;

@city_text:         #333;
@city_halo:         @place_halo;

@town_text:         #3a3a3a;
@town_halo:         @place_halo;

@poi_text:          #444;

@motorway_text:     spin(darken(@motorway_fill,50),-15);
@motorway_halo:     lighten(@motorway_fill,15);
@motorway_shield_text: #3C3F4C;
@motorway_junction_shield_text: #FFFFFF;

@standard_text:     spin(darken(@standard_fill,60),-15);
@standard_halo:     lighten(@standard_fill,15);

@trunk_text:        spin(darken(@trunk_fill,50),-15);
@trunk_halo:        lighten(@trunk_fill,15);

@primary_text:      @standard_text;
@primary_halo:      lighten(@primary_fill,15);

@secondary_text:    spin(darken(@secondary_fill,50),-15);
@secondary_halo:    lighten(@secondary_fill,15);


@road_text:         #777;
@road_halo:         #fff;

@other_text:        #666;
@other_halo:        @place_halo;

@locality_text:     #888;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

@address_text:      rgba(136,133,127,0.75);
@address_halo:      rgba(255,255,255,0.5);

@ferry_text:        #566b82;
@ferry_halo:        rgba(191,213,238,0.66);

@library_icon:      #dddf5d;
@fire_station_icon: #ff675e;
@police_icon:       #5Da9e8;
@school_icon:       #76cbc0;
@hospital_icon:     #f698ae;

/* ****************************************************************** */



