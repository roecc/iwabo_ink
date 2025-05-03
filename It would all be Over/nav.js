const areaSets = {
	bedroom: [
	  {
		name: "Hallway",
		class: "clickable",
		style: {
		  left: "27.5%",
		  top: "12.7%",
		  width: "13%",
		  height: "60%",
		  transform: "rotate(-10deg)",
		},
	  },
	  {
		name: "Attic",
		class: "clickable",
		style: {
		  left: "-8%",
		  top: "0%",
		  width: "28%",
		  height: "100%",
		  transform: "rotate(-20deg)",
		},
	  }
	],
	attic: [
		{
		  name: "Bedroom",
		  class: "clickable",
		  style: {
			left: "31%",
			top: "44%",
			width: "21%",
			height: "43%",
			transform: "rotate(-15deg)",
		  },
		}
	]
	// Add more: hallway, attic, etc.
  };

  function loadClickableAreas(areaStr) {
	const container = document.getElementById('navContainer');
	container.innerHTML = ''; // Clear previous areas

	areaSets[String(areaStr)].forEach(area => {
	  const el = document.createElement('div');
	  el.classList.add('clickable', area.class);
	  el.onclick = () => test(area.name);
  
	  // Apply inline styles
	  Object.assign(el.style, area.style);
  
	  container.appendChild(el);
	});
  }
  
  function unloadClickableAreas() {
	document.getElementById('navContainer').innerHTML = '';
  }