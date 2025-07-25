document.addEventListener('DOMContentLoaded', () => {
    const inventoryModal = document.getElementById('inventoryModal');
    const inventoryGrid = document.getElementById('inventoryGrid');
    const quickSlots = document.getElementById('quickSlots');
  
    //  Simulación de inventario con objetos
    const items = Array.from({ length: 20 }, (_, i) => ({
      name: `Item ${i + 1}`,
      id: i + 1
    }));
  
    //  Renderiza los 20 slots del inventario
    function renderInventory() {
      inventoryGrid.innerHTML = '';
      items.forEach((item, index) => {
        const slot = document.createElement('div');
        slot.classList.add('slot');
        slot.innerHTML = `<span>${index + 1}</span>`;
        inventoryGrid.appendChild(slot);
      });
    }
  
    // Renderiza los quick slots (1–5, 9)
    function renderQuickSlots() {
      quickSlots.innerHTML = '';
      const quickIndices = [0, 1, 2, 3, 4, 8]; // Slots 1–5, 9 (índices)
      quickIndices.forEach(index => {
        const item = items[index];
        const slot = document.createElement('div');
        slot.classList.add('slot');
        slot.innerHTML = `<span>${index + 1}</span>`;
        quickSlots.appendChild(slot);
      });
    }
  
    //  Alternar visibilidad del inventario (F2)
    document.addEventListener('keydown', (e) => {
      if (e.code === 'F2') {
        inventoryModal.classList.toggle('hidden');
      }
    });
  
    // Inicializar
    renderInventory();
    renderQuickSlots();
  });
  
