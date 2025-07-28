<aside id="left-sidebar-nav">
        <ul id="slide-out" class="side-nav fixed leftside-navigation">
            <li class="user-details cyan darken-2">
            <div class="row">
                <div class="col col s4 m4 l4">
                    <img src="images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                </div>
				 <div class="col col s8 m8 l8">
                    <ul id="profile-dropdown" class="dropdown-content">
                        <li><a href="routers/logout.php"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                        </li>
                    </ul>
                </div>
                <div class="col col s8 m8 l8">
                    <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><?php echo $name;?> <i class="mdi-navigation-arrow-drop-down right"></i></a>
                    <p class="user-roal"><?php echo $role;?></p>
                </div>
            </div>
            </li>
            <li class="bold <?php if($page =="items"){ echo "active"; } ?>"><a href="index.php" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i> Food Menu</a>
            </li>
            
             <li class="bold <?php if($page =="drinks"){ echo "active"; } ?>"><a href="drinks.php" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i>Beverages</a>
            </li>
            
            <li class="bold <?php if($page =="pdf"){ echo "active"; } ?>"><a href="pdf.php"  class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i>PDF Menu</a>
            
            </li>
            <li class="bold <?php if($page =="events"){ echo "active"; } ?>"><a href="events.php" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i> Events</a>
            </li>
               
            <li class="bold <?php if($page =="gallery"){ echo "active"; } ?>"><a href="gallery.php" class="waves-effect waves-cyan"><i class="mdi-editor-border-color"></i> Gallery</a>
            </li>    	
            <li class="bold <?php if($page =="users"){ echo "active"; } ?>"><a href="users.php" class="waves-effect waves-cyan"><i class="mdi-social-person"></i> Users</a>
            </li>				
        </ul>
        <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="mdi-navigation-menu"></i></a>
        </aside>