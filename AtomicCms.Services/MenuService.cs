namespace AtomicCms.Services.Concrete
{
    using System.Collections.Generic;
    using Common.Entities;
    using Data.Abstract;

    public class MenuService
    {
        private readonly IMenuData menuData;

        public MenuService(IMenuData menuData)
        {
            this.menuData = menuData;
        }

        public void SaveMenuItem(CmsMenuItem item)
        {
            if (item.Entry != null && item.Entry.Id == 0)
            {
                item.Entry = null;
            }

            menuData.SaveMenuItem(item);
        }

        public IEnumerable<CmsMenu> LoadMenues()
        {
            return menuData.LoadAll();
        }

        public CmsMenuItem LoadMenuItem(int id)
        {
            return menuData.LoadMenuItem(id);
        }

        public CmsMenu LoadMenu(string menuName)
        {
            CmsMenu menu = menuData.LoadMenu(menuName);
            if (null != menu)
            {
                RemoveNotVisibleMenuItems(menu);
            }
            else
            {
                menu = new CmsMenu();
            }

            return menu;
        }

        public CmsMenu LoadMenu(int id)
        {
            return menuData.Load(id);
        }

        public void SaveMenu(CmsMenu menu)
        {
            menuData.Save(menu);
        }

        private void RemoveNotVisibleMenuItems(CmsMenu menu)
        {
            ICollection<CmsMenuItem> visibleItems = new List<CmsMenuItem>();

            foreach (CmsMenuItem item in menu.MenuItems)
            {
                if (item.Visible)
                {
                    visibleItems.Add(item);
                }
            }

            menu.MenuItems = visibleItems;
        }
    }
}