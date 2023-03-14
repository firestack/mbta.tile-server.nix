/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels
 */

/* Font sets are defined in palette.mss */

/* Mapnik does not yet support character-spacing adjustments for
   labels placed along a line. We can fake this using the replace()
   function in the text-name parameter by replacing each character
   with itself followed by one or more spaces. */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>3][zoom<=7] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  text-clip: false;
  text-min-distance: 10;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:13 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:13 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=7] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  text-clip: false;
  text-min-distance: 10;
  [zoom=6] {
    text-size:11 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:12 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=5][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:1;
  text-clip: false;
  text-min-distance: 10;
  text-size: 12;
  [zoom=7] {
    text-size: 13;
  }
  [zoom=8] {
    text-size: 14;
  }
  [zoom=9] {
    text-size:14;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:15;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:15;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:15;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:15;
    text-character-spacing: 2;
    text-wrap-width: 200;
  }
  [zoom=14] {
    text-size:16;
    text-character-spacing: 4;
    text-wrap-width: 300;
  }
  [zoom=15] {
    text-size:17;
    text-character-spacing: 6;
    text-wrap-width: 400;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=9][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:10;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  text-clip: false;
  text-min-distance: 20;
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 11;
  }
  [zoom>=11]{ text-size:12; }
  [zoom>=12]{
    text-size:13;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:14;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=15]{
    text-size:15;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=12],
#place::small[type='suburb'][zoom>=10],
#place::small[type='hamlet'][zoom>=12],
#place::small[type='neighbourhood'][zoom>=14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:11;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  text-clip: false;
  text-min-distance: 20;
  [zoom>=14] {
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-size:13;
    text-halo-radius: 2;
    text-character-spacing: 1;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=17] {
    text-size:14;
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  text-clip: false;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// AREA LABELS
// =====================================================================

@small_icon_width: 19;
@small_icon_height: 23;
@small_icon_transform: translate(0, -@small_icon_height / 2);

@large_icon_width: 22;
@large_icon_height: 26.63;
@large_icon_transform: translate(0, -@large_icon_height / 2);

@landmark_y_offset: 3;

#landmarks::icons[zoom=17][area>5000]  {
  [type='hospital'],
  [type='college'],
  [type='school'],
  [type='university']  {
    marker-placement: point;
    marker-width: @small_icon_width;
    marker-height: @small_icon_height;
    marker-transform: @small_icon_transform;

    [type = 'hospital'] { marker-file: url("img/markers/amenities/hospital.svg"); }  
    
    [type='college'],
    [type='school'],
    [type='university'] { 
      marker-file: url("img/markers/amenities/school.svg"); 
    }
  }
}

#landmarks::icons[zoom>=18][area>=0] {
  [type='police'],  
  [type='fire_station'], 
  [type='library'],
  [type='hospital'] {
    marker-height: @large_icon_height;
    marker-width: @large_icon_width;
    marker-transform: @large_icon_transform;
    marker-file: url("img/markers/amenities/[type].svg"); 
  }

  [type='college'],
  [type='school'],
  [type='university'] { 
    marker-height: @large_icon_height;
    marker-width: @large_icon_width;
    marker-transform: @large_icon_transform;
    marker-file: url("img/markers/amenities/school.svg"); 
  }

}

#landmarks::text {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>25600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000],
  [zoom>=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 11;
    text-wrap-width:30;
    text-fill: rgba(0,0,0,0);
    text-halo-fill: rgba(0,0,0,0);
    text-clip: false;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans;
      text-fill: @greenspace_text;
      text-halo-fill: @greenspace_halo;
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @greenspace_text;
      text-halo-fill: @greenspace_halo;
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @greenspace_text;
      text-halo-fill: @greenspace_halo;
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: @greenspace_halo;
      [zoom>=17] {
        // when zoom >=17, hospitals get landmark treatment
        text-vertical-alignment: bottom;
        text-dy: @landmark_y_offset;
        text-fill: @hospital_text; 
      }
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: @greenspace_halo;
      [zoom>=17] {
        // when zoom >=17, schools get landmark treatment
        text-vertical-alignment: bottom;
        text-dy: @landmark_y_offset;
        text-fill: @school_text; 
      }
    }
    // landmark labels
    [zoom>=18] {
      [type='police'] {
        text-vertical-alignment: bottom;
        text-dy: @landmark_y_offset;
        text-fill: @police_text; 
      }
      [type='fire_station'] {
        text-vertical-alignment: bottom;
        text-dy: @landmark_y_offset;
        text-fill: @fire_station_text; 
      }
      [type='library'] {
        text-vertical-alignment: bottom;
        text-dy: @landmark_y_offset;
        text-fill: @library_text; 
      }
    } 
    [type='water'][zoom>=10] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 10);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  text-clip: false;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 15;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-clip: false;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 20;
    text-character-spacing: 3;
    text-wrap-width: 180;
    text-clip: false;
  }
}

/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans;
  text-fill: @waterway_label;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  text-clip: false;
  text-avoid-edges: true;
  [type='river'][zoom>=12] {
    text-size: 12;
  }
  [type='river'][zoom=14],
  [type='canal'][zoom=16],
  [type='stream'][zoom=18] {
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=15],
  [type='canal'][zoom=17] {
    text-size: 14;
    text-name: "[name].replace('([\S\ ])','$1 ')";
  }
  [type='river'][zoom>=17],
  [type='canal'][zoom=18] {
    text-size: 16;
    text-name: "[name].replace('([\S\ ])','$1 ')";
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=11][reflen>0][type='motorway'] {
  shield-name: "[refs]";
  shield-size: 9;
  shield-placement: line;
  // Values from OSM default styles: https://github.com/gravitystorm/openstreetmap-carto/blob/master/style/roads.mss#L321
  shield-repeat-distance: 400;
  shield-spacing: 760;
  shield-margin: 40;
  shield-face-name: @sans;
  shield-fill: @motorway_shield_text;
  shield-avoid-edges: true;
  shield-file: url("img/shields/motorway_[width]x[height].svg")
}

#motorway_label[type='motorway'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans;
  text-label-position-tolerance: 5;
  text-placement:line;
  text-fill:@motorway_text;
  text-halo-fill:@motorway_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-spacing: 100;
  text-size:10;
  text-clip: false;
  text-min-padding: 5;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom>=13] { text-min-distance:100; text-size:11; }
  [zoom>=15] { text-size:12; }
  [zoom>=17] { text-size:13; }
  [tunnel='yes'] { text-fill:@standard_text;}
  
}

#motorway_label[type='trunk'][zoom>9],
#mainroad_label[type='primary'][zoom>12] {
  text-name:"[name]";
  text-face-name:@sans;
  text-label-position-tolerance: 5;
  text-placement:line;
  text-fill:@trunk_text;
  [type='primary'] {text-fill: @primary_text;}
  text-halo-fill:@trunk_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-spacing: 100;
  text-size:10;
  text-clip: false;
  text-min-padding: 5;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom>=13] { text-min-distance:100; text-size:11; }
  [zoom>=15] { text-size:12; }
  [zoom>=17] { text-size:13; }
}

#mainroad_label[type='secondary'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-label-position-tolerance: 5;
  text-placement:line;
  text-fill:@secondary_text;
  text-halo-fill:@secondary_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-spacing: 100;
  text-size:11;
  text-clip: false;
  text-min-padding: 5;
  [zoom>=15] { text-size:12; }
  [zoom>=17] { text-size:13; }
}

#mainroad_label[type='tertiary'][zoom>14],
#minorroad_label[zoom>14],
#alley_label[zoom>=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-label-position-tolerance: 5;
  text-placement:line;
  text-fill:@standard_text;
  text-halo-fill:@standard_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-spacing: 100;
  text-size:11;
  text-clip: false;
  [zoom>=15] { text-size:12; }
  [zoom>=17] { text-size:13; }
}

#junction_label[zoom >= 17] {
  [ref !=null] {
    shield-size: 9;
    shield-face-name: @sans;
    shield-name: "[refs]";
    shield-fill: @motorway_junction_shield_text;
    shield-file: url("img/shields/exit_[width]x[height].svg")
  }
  [ref=null][name!=null] {
    shield-size: 9;
    shield-face-name: @sans;
    shield-name: "[name]";
    shield-fill: @motorway_junction_shield_text;
    shield-file: url("img/shields/exit_[namelen]x1.svg")
  }
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[zoom>=16],
#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16] {
  [oneway = 'yes'],
  [oneway='-1'] {
     marker-placement:line;
     marker-max-error: 0.5;
     marker-spacing: 200;
     marker-file: url(img/icon/oneway.svg);
     [oneway='-1'] { marker-file: url(img/icon/oneway-reverse.svg); }
     [zoom=16] { marker-transform: "scale(0.75)"; }
     [zoom>=17][zoom<19] { marker-transform: "scale(1.2)"; }
     [zoom>=19] { marker-transform: "scale(1.4)"; }
  }
}

/* ================================================================== */
/* FERRIES
/* ================================================================== */

#ferries[zoom>=15] {
  text-name: '[name]';
  text-face-name: @sans;
  text-fill: @ferry_text;
  text-halo-fill: @ferry_halo;
  text-halo-radius: 1;
  text-min-distance: 50;
  text-placement: line;
  text-size: 11;
  text-clip: false;
  text-avoid-edges: true;
}

/* ****************************************************************** */
